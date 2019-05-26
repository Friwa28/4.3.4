/*
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "DynamicObject.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MoveSplineInit.h"
#include "MoveSplineInitArgs.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "Spell.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "stonecore.h"
#include "Vehicle.h"
#include <G3D/Vector3.h>

enum Spells
{
    SPELL_ENERGY_SHIELD             = 82858,
    SPELL_CURSE_OF_BLOOD            = 79345,
    SPELL_FORCE_GRIP                = 79351,
    SPELL_FORCE_GRIP_CHANGE_SEAT    = 79359,
    SPELL_FORCE_GRIP_DAMAGE         = 79358,
    SPELL_SUMMON_GRAVITY_WELL       = 79340,
    SPELL_EARTH_FURY_ENERGY_SHIELD  = 79050,
    SPELL_GRAVITY_WELL_VISUAL       = 79245,
    SPELL_GRAVITY_WELL_AURA_DAMAGE  = 79244,
    SPELL_GRAVITY_WELL_AURA_PULL    = 79333,
    SPELL_GRAVITY_WELL_DAMAGE       = 79249,
    SPELL_GRAVITY_WELL_PULL         = 79332,
    SPELL_EARTH_FURY_CASTING_VISUAL = 79002,
    SPELL_SEISMIC_SHARD_SUMMON_1    = 86860,
    SPELL_SEISMIC_SHARD_SUMMON_2    = 86858,
    SPELL_SEISMIC_SHARD_SUMMON_3    = 86856,
    SPELL_SEISMIC_SHARD_VISUAL      = 79009,
    SPELL_SEISMIC_SHARD_PREPARE     = 86862,
    SPELL_SEISMIC_SHARD_TARGETING   = 80511,
    SPELL_SEISMIC_SHARD_LAUNCH      = 79015,
    SPELL_SEISMIC_SHARD_MISSLE      = 79014,
    SPELL_EJECT_ALL_PASSENGERS      = 68576,
    SPELL_SUMMON_WAVE_SOUTH         = 79200,
    SPELL_SUMMON_WAVE_WEST          = 79196,
    SPELL_SUMMON_ADD_SOUTH          = 79193,
    SPELL_SUMMON_ADD_WEST           = 79199
};

enum Texts
{
    SAY_AGGRO       = 0,
    SAY_PHASE_TWO   = 1,
    SAY_DEATH       = 2
};

enum Events
{
    EVENT_INTRO_MOVE = 1,
    EVENT_CURSE_OF_BLOOD,
    EVENT_FORCE_GRIP,
    EVENT_FORCE_GRIP_SMASH,
    EVENT_FORCE_GRIP_DAMAGE,
    EVENT_REPEAT_FORCE_GRIP_SMASH,
    EVENT_SUMMON_GRAVITY_WELL,
    EVENT_ENERGY_SHIELD,
    EVENT_EARTH_FURY,
    EVENT_SUMMON_WAVE_SOUTH,
    EVENT_SUMMON_WAVE_WEST,
    EVENT_GRAVITY_WELL_AURA_DAMAGE,
    EVENT_GRAVITY_WELL_AURA_PULL,
    EVENT_APPLY_IMMUNITY,
    EVENT_EARTH_FURY_FLY_UP,
    EVENT_EARTH_FURY_FLY_ABOVE_PLATFORM,
    EVENT_EARTH_FURY_PREPARE_SHARD,
    EVENT_EARTH_FURY_LAUNCH_SHARD,
    EVENT_EARTH_FURY_FLY_DOWN,
    EVENT_START_ATTACK,
    EVENT_LAUNCH,
    EVENT_SEISMIC_SHARD_MOUNT
};

enum Points
{
    POINT_NONE,
    POINT_INTRO_MOVE,
    POINT_FLY_UP,
    POINT_ABOVE_PLATFORM,
    POINT_PLATFORM,
    POINT_GROUND
};

enum Seats
{
    SEAT_FORCE_GRIP_1   = 1,
    SEAT_FORCE_GRIP_2   = 2
};

enum VehicleIds
{
    VEHICLE_ID_DEFAULT      = 903,
    VEHICLE_ID_FORCE_GRIP   = 892
};

Position const GroundPos = { 1331.82f, 980.314f, 207.542f };
Position const AbovePlatformPos = { 1336.21f, 960.813f, 215.0f };

class boss_high_priestess_azil : public CreatureScript
{
    public:
        boss_high_priestess_azil() : CreatureScript("boss_high_priestess_azil") { }

        struct boss_high_priestess_azilAI : public BossAI
        {
            boss_high_priestess_azilAI(Creature* creature) : BossAI(creature, DATA_HIGH_PRIESTESS_AZIL)
            {
                Initialize();
            }

            void Initialize()
            {
                _seismicShardCount = 0;
                _isChannelingForceGrip = false;
            }

            void Reset() override
            {
                _Reset();
                Initialize();
                me->SetCanFly(false);
                me->SetDisableGravity(false);
                me->SetReactState(REACT_PASSIVE);
                MakeInterruptable(false);
            }

            void JustEngagedWith(Unit* /*victim*/) override
            {
                _JustEngagedWith();
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);

                DoCast(me, SPELL_ENERGY_SHIELD);
                Talk(SAY_AGGRO);

                events.ScheduleEvent(EVENT_INTRO_MOVE, Seconds(2));
                events.ScheduleEvent(EVENT_CURSE_OF_BLOOD, Seconds(6));
                events.ScheduleEvent(EVENT_FORCE_GRIP, Seconds(8), Seconds(10));
                events.ScheduleEvent(EVENT_SUMMON_GRAVITY_WELL, Seconds(16));
                events.ScheduleEvent(EVENT_ENERGY_SHIELD, Seconds(35), Seconds(36));
                events.ScheduleEvent(EVENT_SUMMON_WAVE_SOUTH, Milliseconds(1));
                events.ScheduleEvent(EVENT_SUMMON_WAVE_WEST, Seconds(42));
            }

            void JustDied(Unit* /*killer*/) override
            {
                _JustDied();
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
                Talk(SAY_DEATH);
            }

            void EnterEvadeMode(EvadeReason /*why*/) override
            {
                _EnterEvadeMode();
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
                summons.DespawnAll();
                _DespawnAtEvade();
            }

            void MakeInterruptable(bool apply)
            {
                me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_INTERRUPT, !apply);
                me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_INTERRUPT_CAST, !apply);
            }

            void OnSpellCastInterrupt(SpellInfo const* spell) override
            {
                if (spell->Id == SPELL_FORCE_GRIP)
                {
                    MakeInterruptable(false);
                    SetVehicleId(VEHICLE_ID_DEFAULT);
                    events.CancelEvent(EVENT_APPLY_IMMUNITY);
                    _isChannelingForceGrip = false;
                }
            }

            void PassengerBoarded(Unit* who, int8 seatId, bool apply) override
            {
                if (who->GetTypeId() != TYPEID_PLAYER)
                    return;

                if (!apply)
                    return;

                if (seatId == SEAT_FORCE_GRIP_1)
                {
                    events.ScheduleEvent(EVENT_FORCE_GRIP_SMASH, Milliseconds(800));
                    _isChannelingForceGrip = true;
                }
                else if (seatId == SEAT_FORCE_GRIP_2)
                {
                    if (_isChannelingForceGrip)
                        events.ScheduleEvent(EVENT_FORCE_GRIP_DAMAGE, Milliseconds(800));
                    else
                        who->ExitVehicle();
                }
            }

            void MovementInform(uint32 type, uint32 id) override
            {
                if (type != POINT_MOTION_TYPE && id != POINT_INTRO_MOVE)
                    return;

                switch (id)
                {
                    case POINT_INTRO_MOVE:
                        me->RemoveAurasDueToSpell(SPELL_ENERGY_SHIELD);
                        me->SetReactState(REACT_AGGRESSIVE);
                        DoStartMovement(me->GetVictim());
                        break;
                    case POINT_FLY_UP:
                        me->SetCanFly(true);
                        me->SetDisableGravity(true);
                        events.ScheduleEvent(EVENT_EARTH_FURY_FLY_ABOVE_PLATFORM, Seconds(1));
                        break;
                    case POINT_ABOVE_PLATFORM:
                        me->SetFacingTo(5.218534f);
                        DoCast(me, SPELL_EARTH_FURY_CASTING_VISUAL);
                        DoCast(me, SPELL_SEISMIC_SHARD_SUMMON_1);
                        DoCast(me, SPELL_SEISMIC_SHARD_SUMMON_2);
                        DoCast(me, SPELL_SEISMIC_SHARD_SUMMON_3);
                        events.ScheduleEvent(EVENT_EARTH_FURY_PREPARE_SHARD, Seconds(6) + Milliseconds(700));
                        break;
                    case POINT_GROUND:
                        DoCast(me, SPELL_EJECT_ALL_PASSENGERS);
                        me->SetCanFly(false);
                        me->SetDisableGravity(false);
                        me->SetReactState(REACT_AGGRESSIVE);
                        DoStartMovement(me->GetVictim());
                        events.ScheduleEvent(EVENT_CURSE_OF_BLOOD, Seconds(6));
                        events.ScheduleEvent(EVENT_FORCE_GRIP, Seconds(8), Seconds(10));
                        events.ScheduleEvent(EVENT_SUMMON_GRAVITY_WELL, Seconds(16));
                        break;
                    default:
                        break;
                }
            }

            void UpdateAI(uint32 diff) override
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING) && !_isChannelingForceGrip)
                    return;

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_INTRO_MOVE:
                            me->GetMotionMaster()->MoveJump(GroundPos, me->GetSpeed(MOVE_FLIGHT), 1.918408f, POINT_INTRO_MOVE);
                            break;
                        case EVENT_CURSE_OF_BLOOD:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                                DoCast(target, SPELL_CURSE_OF_BLOOD);
                            events.Repeat(Seconds(13), Seconds(15));
                            break;
                        case EVENT_FORCE_GRIP:
                            MakeInterruptable(true);
                            SetVehicleId(VEHICLE_ID_FORCE_GRIP);
                            DoCastVictim(SPELL_FORCE_GRIP);
                            events.ScheduleEvent(EVENT_APPLY_IMMUNITY, Seconds(6) + Milliseconds(500));
                            events.Repeat(Seconds(13), Seconds(15));
                            break;
                        case EVENT_FORCE_GRIP_SMASH:
                            if (Vehicle* vehicle = me->GetVehicleKit())
                                if (Unit* passenger = vehicle->GetPassenger(SEAT_FORCE_GRIP_1))
                                    DoCast(passenger, SPELL_FORCE_GRIP_CHANGE_SEAT, true);
                            break;
                        case EVENT_FORCE_GRIP_DAMAGE:
                            if (Vehicle* vehicle = me->GetVehicleKit())
                                if (Unit* passenger = vehicle->GetPassenger(SEAT_FORCE_GRIP_2))
                                    DoCast(passenger, SPELL_FORCE_GRIP_DAMAGE, true);
                            events.ScheduleEvent(EVENT_REPEAT_FORCE_GRIP_SMASH, Milliseconds(400));
                            break;
                        case EVENT_REPEAT_FORCE_GRIP_SMASH:
                            if (Vehicle* vehicle = me->GetVehicleKit())
                                if (Unit* passenger = vehicle->GetPassenger(SEAT_FORCE_GRIP_2))
                                    if (SpellInfo const* spell = sSpellMgr->GetSpellInfo(SPELL_FORCE_GRIP_DAMAGE))
                                        if (uint32 spellId = spell->Effects[EFFECT_0].TriggerSpell)
                                            passenger->CastSpell(me, spellId, true);
                            break;
                        case EVENT_SUMMON_GRAVITY_WELL:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                                DoCast(target, SPELL_SUMMON_GRAVITY_WELL);
                            events.Repeat(Seconds(13), Seconds(15));
                            break;
                        case EVENT_ENERGY_SHIELD:
                            events.Reset();
                            DoCast(me, SPELL_EARTH_FURY_ENERGY_SHIELD);
                            events.ScheduleEvent(EVENT_EARTH_FURY, Milliseconds(1));
                            break;
                        case EVENT_EARTH_FURY:
                            _seismicShardCount = 0;
                            me->SetReactState(REACT_PASSIVE);
                            me->SetFacingTo(5.862942f);
                            events.ScheduleEvent(EVENT_EARTH_FURY_FLY_UP, Seconds(1) + Milliseconds(600));
                            break;
                        case EVENT_EARTH_FURY_FLY_UP:
                            Talk(SAY_PHASE_TWO);
                            me->GetMotionMaster()->MovePoint(POINT_FLY_UP, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ() + 5);
                            break;
                        case EVENT_EARTH_FURY_FLY_ABOVE_PLATFORM:
                            me->GetMotionMaster()->MovePoint(POINT_ABOVE_PLATFORM, AbovePlatformPos, false);
                            break;
                        case EVENT_EARTH_FURY_PREPARE_SHARD:
                            DoCast(me, SPELL_SEISMIC_SHARD_PREPARE);
                            events.ScheduleEvent(EVENT_EARTH_FURY_LAUNCH_SHARD, Seconds(1) + Milliseconds(800));
                            break;
                        case EVENT_EARTH_FURY_LAUNCH_SHARD:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                            {
                                me->SetFacingToObject(target);
                                DoCast(target, SPELL_SEISMIC_SHARD_TARGETING);
                                DoCast(me, SPELL_SEISMIC_SHARD_LAUNCH);
                                _seismicShardCount++;
                            }
                            events.ScheduleEvent(_seismicShardCount < 3 ? EVENT_EARTH_FURY_PREPARE_SHARD : EVENT_EARTH_FURY_FLY_DOWN, Seconds(4) + Milliseconds(800));
                            break;
                        case EVENT_EARTH_FURY_FLY_DOWN:
                        {
                            me->RemoveAurasDueToSpell(SPELL_EARTH_FURY_CASTING_VISUAL);
                            me->RemoveAurasDueToSpell(sSpellMgr->GetSpellIdForDifficulty(SPELL_EARTH_FURY_ENERGY_SHIELD, me));
                            Position pos = me->GetPosition();
                            pos.m_positionZ = me->GetMap()->GetStaticHeight(me->GetPhaseShift(), pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ());
                            me->GetMotionMaster()->MovePoint(POINT_GROUND, pos, false);
                            break;
                        }
                        case EVENT_SUMMON_WAVE_SOUTH:
                            if (Creature* worldtrigger = me->FindNearestCreature(NPC_WORLDTRIGGER, 150.0f))
                                worldtrigger->CastSpell(worldtrigger, SPELL_SUMMON_WAVE_SOUTH);
                            events.ScheduleEvent(EVENT_SUMMON_WAVE_SOUTH, Seconds(12));
                            break;
                        case EVENT_SUMMON_WAVE_WEST:
                            if (Creature* worldtrigger = me->FindNearestCreature(NPC_WORLDTRIGGER, 150.0f))
                                worldtrigger->CastSpell(worldtrigger, SPELL_SUMMON_WAVE_WEST);
                            events.ScheduleEvent(EVENT_SUMMON_WAVE_WEST, Seconds(22));
                            break;
                        case EVENT_APPLY_IMMUNITY:
                            MakeInterruptable(false);
                            _isChannelingForceGrip = false;
                            SetVehicleId(VEHICLE_ID_DEFAULT);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

        private:
            void SetVehicleId(uint32 id)
            {
                me->RemoveVehicleKit();
                me->CreateVehicleKit(id, me->GetEntry());
            }

            uint8 _seismicShardCount;
            bool _isChannelingForceGrip;
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return GetStonecoreAI<boss_high_priestess_azilAI>(creature);
        }
};

class npc_azil_devout_follower : public CreatureScript
{
    public:
        npc_azil_devout_follower() : CreatureScript("npc_azil_devout_follower") { }

        struct npc_azil_devout_followerAI : public ScriptedAI
        {
            npc_azil_devout_followerAI(Creature* creature) : ScriptedAI(creature), _instance(me->GetInstanceScript()) { }

            void IsSummonedBy(Unit* summoner) override
            {
                if (summoner->GetEntry() != NPC_WORLDTRIGGER)
                    return;

                if (Creature* azil = _instance->GetCreature(DATA_HIGH_PRIESTESS_AZIL))
                {
                    azil->AI()->JustSummoned(me);

                    if (Unit* target = azil->SelectNearestPlayer(60.0f))
                    {
                        me->AddThreat(target, 0.0f);
                        me->AI()->AttackStart(target);
                    }
                    else
                        me->GetMotionMaster()->MovePoint(POINT_NONE, summoner->GetPosition());
                }
            }
        private:
            InstanceScript* _instance;
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return GetStonecoreAI<npc_azil_devout_followerAI>(creature);
        }
};

class npc_azil_gravity_well : public CreatureScript
{
    public:
        npc_azil_gravity_well() : CreatureScript("npc_azil_gravity_well") { }

        struct npc_azil_gravity_wellAI : public ScriptedAI
        {
            npc_azil_gravity_wellAI(Creature* creature) : ScriptedAI(creature)
            {
                DoCast(me, SPELL_GRAVITY_WELL_VISUAL);
                _events.ScheduleEvent(EVENT_GRAVITY_WELL_AURA_DAMAGE, Seconds(3) + Milliseconds(200));
                _events.ScheduleEvent(EVENT_GRAVITY_WELL_AURA_PULL, Seconds(4) + Milliseconds(500));
                if (!IsHeroic())
                    me->DespawnOrUnsummon(Seconds(20));
            }

            void KilledUnit(Unit* victim) override
            {
                if (victim->GetEntry() != NPC_DEVOUT_FOLLOWER)
                    return;

                me->SetObjectScale(me->GetObjectScale() - 0.25f);
                    if (me->GetObjectScale() <= 0.0f)
                    me->DespawnOrUnsummon(Seconds(1));
            }

            void UpdateAI(uint32 diff) override
            {
                _events.Update(diff);

                while (uint32 eventId = _events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_GRAVITY_WELL_AURA_DAMAGE:
                            me->RemoveAurasDueToSpell(SPELL_GRAVITY_WELL_VISUAL);
                            DoCast(me, SPELL_GRAVITY_WELL_AURA_DAMAGE);
                            break;
                        case EVENT_GRAVITY_WELL_AURA_PULL:
                            DoCast(me, SPELL_GRAVITY_WELL_AURA_PULL);
                            break;
                        default:
                            break;
                    }
                }
            }

        private:
            EventMap _events;
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return GetStonecoreAI<npc_azil_gravity_wellAI>(creature);
        }
};

class npc_azil_seismic_shard : public CreatureScript
{
    public:
        npc_azil_seismic_shard() : CreatureScript("npc_azil_seismic_shard") { }

        struct npc_azil_seismic_shardAI : public ScriptedAI
        {
            npc_azil_seismic_shardAI(Creature* creature) : ScriptedAI(creature), _instance(me->GetInstanceScript()) { }

            void IsSummonedBy(Unit* /*summoner*/) override
            {
                me->SetDisableGravity(true);
                DoCast(me, SPELL_SEISMIC_SHARD_VISUAL);

                Movement::MoveSplineInit init(me);
                FillPath(init.Path());
                init.SetFly();
                init.Launch();

                _events.ScheduleEvent(EVENT_SEISMIC_SHARD_MOUNT, Seconds(2) + Milliseconds(400));
            }

            void UpdateAI(uint32 diff) override
            {
                _events.Update(diff);

                while (uint32 eventId = _events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_SEISMIC_SHARD_MOUNT:
                            if (Creature* highPriestAzil = _instance->GetCreature(DATA_HIGH_PRIESTESS_AZIL))
                                if (Vehicle* vehicle = highPriestAzil->GetVehicleKit())
                                    me->EnterVehicle(highPriestAzil, vehicle->GetNextEmptySeat(0, false)->first);
                            break;
                        default:
                            break;
                    }
                }
            }

        private:
            void FillPath(Movement::PointsArray& path) const
            {
                G3D::Vector3 point;
                me->GetPosition(point.x, point.y, point.z);

                point.x -= 1.0f;
                path.push_back(point);

                point.x += 1.0f;
                path.push_back(point);

                point.z += 25.0f;
                path.push_back(point);

                path.push_back(point);
            }

            InstanceScript* _instance;
            EventMap _events;
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return GetStonecoreAI<npc_azil_seismic_shardAI>(creature);
        }
};

class spell_azil_summon_wave_south : public SpellScript
{
    PrepareSpellScript(spell_azil_summon_wave_south);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_SUMMON_ADD_SOUTH });
    }

    void HandleScript(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        for (int i = 0; i < 3; i++)
            caster->CastSpell(caster, SPELL_SUMMON_ADD_SOUTH, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_azil_summon_wave_south::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

class spell_azil_summon_wave_west : public SpellScript
{
    PrepareSpellScript(spell_azil_summon_wave_west);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_SUMMON_ADD_WEST });
    }

    void HandleScript(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        for (int i = 0; i < 10; i++)
            caster->CastSpell(caster, SPELL_SUMMON_ADD_WEST, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_azil_summon_wave_west::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

class PlayerPetOrDevoutFollowerCheck
{
public:
    bool operator()(WorldObject* object) const
    {
        // Valid targets are players, pets and Devout Followers
        if (Creature* creature = object->ToCreature())
            return (!creature->ToPet() && object->GetEntry() != NPC_DEVOUT_FOLLOWER);
        return (!object->ToPlayer());
    }
};

class spell_azil_gravity_well_damage_nearby : public SpellScript
{
    PrepareSpellScript(spell_azil_gravity_well_damage_nearby);

    void SetRadiusMod()
    {
        GetSpell()->SetSpellValue(SPELLVALUE_RADIUS_MOD, int32(GetCaster()->GetObjectScale() * 10000 * 2 / 3));
    }

    void FilterTargets(std::list<WorldObject*>& unitList)
    {
        unitList.remove_if(PlayerPetOrDevoutFollowerCheck());
    }

    void HandleScript(SpellEffIndex /*effIndex*/)
    {
        GetCaster()->CastSpell(GetHitUnit(), SPELL_GRAVITY_WELL_DAMAGE, true);
    }

    void Register() override
    {
        BeforeCast += SpellCastFn(spell_azil_gravity_well_damage_nearby::SetRadiusMod);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_azil_gravity_well_damage_nearby::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        OnEffectHitTarget += SpellEffectFn(spell_azil_gravity_well_damage_nearby::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

class spell_azil_gravity_well_damage : public SpellScript
{
    PrepareSpellScript(spell_azil_gravity_well_damage);

    void CalculateDamage(SpellEffIndex /*effIndex*/)
    {
        Unit* target = GetHitUnit();
        if (!target)
            return;

        float distance = GetCaster()->GetDistance2d(target);

        if (target->GetEntry() == NPC_DEVOUT_FOLLOWER)
            SetHitDamage(int32(200000 - (1000 * distance))); //need more research on this formula, damage values from sniffs: 189264, 190318, 190478, 196134, 197672, 199735
        else
            SetHitDamage(int32(4000 - (200 * distance)));
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_azil_gravity_well_damage::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

class spell_azil_gravity_well_pull : public SpellScript
{
    PrepareSpellScript(spell_azil_gravity_well_pull);

    void SetRadiusMod()
    {
        GetSpell()->SetSpellValue(SPELLVALUE_RADIUS_MOD, int32(GetCaster()->GetObjectScale() * 10000 * 2 / 3));
    }

    void Register() override
    {
        BeforeCast += SpellCastFn(spell_azil_gravity_well_pull::SetRadiusMod);
    }
};

class spell_azil_seismic_shard_change_seat : public SpellScript
{
    PrepareSpellScript(spell_azil_seismic_shard_change_seat);

    void ExitVehicle()
    {
        GetCaster()->ExitVehicle();
    }

    void Register() override
    {
        BeforeCast += SpellCastFn(spell_azil_seismic_shard_change_seat::ExitVehicle);
    }
};

class spell_azil_seismic_shard : public SpellScript
{
    PrepareSpellScript(spell_azil_seismic_shard);

    void HandleScript(SpellEffIndex /*effIndex*/)
    {
        Creature* target = GetHitUnit()->ToCreature();
        if (!target)
            return;

        target->ExitVehicle();
        if (DynamicObject* dynamicObject = GetCaster()->GetDynObject(SPELL_SEISMIC_SHARD_TARGETING))
            target->CastSpell(dynamicObject->GetPositionX(), dynamicObject->GetPositionY(), dynamicObject->GetPositionZ(), SPELL_SEISMIC_SHARD_MISSLE, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_azil_seismic_shard::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

class spell_azil_force_grip : public SpellScript
{
    PrepareSpellScript(spell_azil_force_grip);

    void HandleScript(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
        {
            if (Unit* target = GetHitUnit())
            {
                target->SetDisableGravity(true);
                target->CastSpell(caster, GetSpellInfo()->Effects[effIndex].TriggerSpell, true);
            }
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_azil_force_grip::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

class spell_azil_force_grip_AuraScript : public AuraScript
{
    PrepareAuraScript(spell_azil_force_grip_AuraScript);

    void OnAuraRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* target = GetTarget())
        {
            if (Unit* caster = GetCaster())
                caster->CastSpell(target, SPELL_FORCE_GRIP_CHANGE_SEAT, true);

            target->SetDisableGravity(false);
        }
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(spell_azil_force_grip_AuraScript::OnAuraRemove, EFFECT_1, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
    }
};

class spell_azil_force_grip_change_seat : public SpellScript
{
    PrepareSpellScript(spell_azil_force_grip_change_seat);

    void HandleScript(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
            if (Unit* target = GetHitUnit())
                target->CastSpell(caster, GetSpellInfo()->Effects[effIndex].TriggerSpell, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_azil_force_grip_change_seat::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

void AddSC_boss_high_priestess_azil()
{
    new boss_high_priestess_azil();
    new npc_azil_devout_follower();
    new npc_azil_gravity_well();
    new npc_azil_seismic_shard();
    RegisterSpellScript(spell_azil_summon_wave_south);
    RegisterSpellScript(spell_azil_summon_wave_west);
    RegisterSpellScript(spell_azil_gravity_well_damage_nearby);
    RegisterSpellScript(spell_azil_gravity_well_damage);
    RegisterSpellScript(spell_azil_gravity_well_pull);
    RegisterSpellScript(spell_azil_seismic_shard_change_seat);
    RegisterSpellScript(spell_azil_seismic_shard);
    RegisterSpellAndAuraScriptPair(spell_azil_force_grip, spell_azil_force_grip_AuraScript);
    RegisterSpellScript(spell_azil_force_grip_change_seat);
}
