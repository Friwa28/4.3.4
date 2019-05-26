-- Pathing for  Entry: 46402 'TDB FORMAT' 
SET @NPC := 264940;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9510.48,`position_y`=-945.682,`position_z`=104.7723 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9510.48,-945.682,104.7723,0,1,0,0,100,0),
(@PATH,2,-9490.02,-945.651,109.2862,0,1,0,0,100,0),
(@PATH,3,-9481.64,-925.976,109.2723,0,1,0,0,100,0),
(@PATH,4,-9464.31,-923.748,112.5456,0,1,0,0,100,0),
(@PATH,5,-9445.52,-922.311,112.5456,0,1,0,0,100,0),
(@PATH,6,-9464.31,-923.748,112.5456,0,1,0,0,100,0),
(@PATH,7,-9481.64,-925.976,109.2723,0,1,0,0,100,0),
(@PATH,8,-9490.02,-945.651,109.2862,0,1,0,0,100,0),
(@PATH,9,-9510.48,-945.682,104.7723,0,1,0,0,100,0),
(@PATH,10,-9533.89,-946.705,104.7548,0,1,0,0,100,0),
(@PATH,11,-9549.63,-945.835,100.3798,0,1,0,0,100,0),
(@PATH,12,-9554.9,-939.823,100.3798,0,1,0,0,100,0),
(@PATH,13,-9560.75,-931.833,100.2973,0,1,0,0,100,0),
(@PATH,14,-9569,-926.535,100.2999,0,1,0,0,100,0),
(@PATH,15,-9575.53,-925.012,100.2999,0,1,0,0,100,0),
(@PATH,16,-9569,-926.535,100.2999,0,1,0,0,100,0),
(@PATH,17,-9560.75,-931.833,100.2973,0,1,0,0,100,0),
(@PATH,18,-9554.9,-939.823,100.3798,0,1,0,0,100,0),
(@PATH,19,-9549.63,-945.835,100.3798,0,1,0,0,100,0),
(@PATH,20,-9533.89,-946.705,104.7548,0,1,0,0,100,0);
-- 0x2030A400202D508000003B0002176446 .go xyz -9510.48 -945.682 104.7723

-- Creature Samir 
SET @ENTRY := 47625;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 60, 0, 100, 0, 5000, 5000, 55000, 55000, 17, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 5000 and 5000 ms) - Self: Set emote state (UNIT_NPC_EMOTESTATE) to 69 // "),
(@ENTRY, 0, 1, 0, 60, 0, 100, 0, 12500, 12500, 55000, 55000, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 12500 and 12500 ms) - Self: Set emote state (UNIT_NPC_EMOTESTATE) to 0 // "),
(@ENTRY, 0, 2, 0, 60, 0, 100, 0, 13000, 13000, 55000, 55000, 66, 0, 0, 0, 0, 0, 0, 10, 263934, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 13000 and 13000 ms) - Self: Look at Creature Blacksmith Abasi 48617 (263934) // "),
(@ENTRY, 0, 3, 0, 60, 0, 100, 0, 15000, 15000, 55000, 55000, 5, 397, 0, 0, 0, 0, 0, 10, 263934, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 15000 and 15000 ms) - Creature Blacksmith Abasi 48617 (263934): Play emote 397 // "),
(@ENTRY, 0, 4, 0, 60, 0, 100, 0, 15600, 15600, 55000, 55000, 5, 274, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 15600 and 15600 ms) - Self: Play emote 274 // "),
(@ENTRY, 0, 5, 0, 60, 0, 100, 0, 19400, 19400, 55000, 55000, 5, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 19400 and 19400 ms) - Self: Play emote 6 // "),
(@ENTRY, 0, 6, 0, 60, 0, 100, 0, 19700, 19700, 55000, 55000, 5, 396, 0, 0, 0, 0, 0, 10, 263934, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 19700 and 19700 ms) - Creature Blacksmith Abasi 48617 (263934): Play emote 396 // "),
(@ENTRY, 0, 7, 0, 60, 0, 100, 0, 22900, 22900, 55000, 55000, 5, 273, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 22900 and 22900 ms) - Self: Play emote 273 // "),
(@ENTRY, 0, 8, 0, 60, 0, 100, 0, 24500, 24500, 55000, 55000, 5, 396, 0, 0, 0, 0, 0, 10, 263934, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 24500 and 24500 ms) - Creature Blacksmith Abasi 48617 (263934): Play emote 396 // "),
(@ENTRY, 0, 9, 0, 60, 0, 100, 0, 26500, 26500, 55000, 55000, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 26500 and 26500 ms) - Self: Look at home position // "),
(@ENTRY, 0, 10, 0, 60, 0, 100, 0, 27700, 27700, 55000, 55000, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 27700 and 27700 ms) - Self: Set emote state (UNIT_NPC_EMOTESTATE) to 0 // "),
(@ENTRY, 0, 11, 0, 60, 0, 100, 0, 31500, 31500, 55000, 55000, 17, 233, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 31500 and 31500 ms) - Self: Set emote state (UNIT_NPC_EMOTESTATE) to 233 // "),
(@ENTRY, 0, 12, 0, 60, 0, 100, 0, 49800, 49800, 55000, 55000, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 55000 and 55000 ms (for the first time, timer between 49800 and 49800 ms) - Self: Set emote state (UNIT_NPC_EMOTESTATE) to 0 // ");

DELETE FROM `creature_addon` WHERE `guid`= 264935;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(264935, 0, 0, 0, 1, 0, ''); -- 47625

UPDATE `creature` SET `equipment_id`= 1 WHERE `guid`= 264935;

DELETE FROM `creature_equip_template` WHERE `CreatureID`= 47625;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES
(47625, 1, 1903, 0, 0); -- 47625
