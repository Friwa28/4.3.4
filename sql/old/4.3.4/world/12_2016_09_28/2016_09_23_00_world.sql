--
UPDATE `creature_template` SET `difficulty_entry_1`=57296 WHERE `entry`=57280;
UPDATE `creature_template` SET `difficulty_entry_1`=50201 WHERE `entry`=45700;
UPDATE `creature_template` SET `difficulty_entry_1`=57295 WHERE `entry`=57231;
UPDATE `creature_template` SET `difficulty_entry_1`=57294 WHERE `entry`=57160;
UPDATE `creature_template` SET `difficulty_entry_1`=57293 WHERE `entry`=57159;
UPDATE `creature_template` SET `difficulty_entry_1`=57292 WHERE `entry`=57158;
UPDATE `creature_template` SET `difficulty_entry_1`=57270 WHERE `entry`=55869;
UPDATE `creature_template` SET `difficulty_entry_1`=55026 WHERE `entry`=52428;
UPDATE `creature_template` SET `difficulty_entry_1`=56370 WHERE `entry`=56369;
UPDATE `creature_template` SET `difficulty_entry_1`=56373 WHERE `entry`=56372;
UPDATE `creature_template` SET `difficulty_entry_1`=54992 WHERE `entry`=53206;
UPDATE `creature_template` SET `difficulty_entry_1`=55031 WHERE `entry`=54991;
UPDATE `creature_template` SET `difficulty_entry_1`=54967 WHERE `entry`=53732;
UPDATE `creature_template` SET `difficulty_entry_1`=54966 WHERE `entry`=53167;
UPDATE `creature_template` SET `difficulty_entry_1`=53777 WHERE `entry`=53639;
UPDATE `creature_template` SET `difficulty_entry_1`=54965 WHERE `entry`=53121;
UPDATE `creature_template` SET `difficulty_entry_1`=54964 WHERE `entry`=53120;
UPDATE `creature_template` SET `difficulty_entry_1`=54963 WHERE `entry`=53119;
UPDATE `creature_template` SET `difficulty_entry_1`=54679 WHERE `entry`=54678;
UPDATE `creature_template` SET `difficulty_entry_1`=54850 WHERE `entry`=54849;
UPDATE `creature_template` SET `difficulty_entry_1`=54051 WHERE `entry`=53489;
UPDATE `creature_template` SET `difficulty_entry_1`=54564 WHERE `entry`=54563;

UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=16, `unit_flags`=32768, `unit_flags2`=33556480, `unit_class`=8 WHERE `entry`=57296;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=2146, `unit_class`=8, `unit_flags`=32832 WHERE `entry`=50201;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=16, `unit_flags2`=34816 WHERE `entry`=57295;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_class`=2 WHERE `entry`=57294;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_class`=4, `unit_flags2`=33556480 WHERE `entry`=57293;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=14, `unit_class`=2 WHERE `entry`=57292;
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction`=16, `unit_flags`=32832 WHERE `entry`=57270;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=14 WHERE `entry`=55026;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=14, `unit_flags`=537133312 WHERE `entry`=56370;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=14, `unit_flags`=256 WHERE `entry`=56373;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_flags2`=33556480 WHERE `entry`=54992;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16 WHERE `entry`=55031;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16 WHERE `entry`=54967;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_flags`=32768 WHERE `entry`=54966;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_class`=8, `unit_flags`=64, `unit_flags2`=33556480 WHERE `entry`=53777;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_class`=8, `unit_flags`=64, `unit_flags2`=33556480 WHERE `entry`=54965;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_flags`=64 WHERE `entry`=54964;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction`=16, `unit_flags`=64, `unit_flags2`=33556480 WHERE `entry`=54963;
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `exp`=1, `faction`=1660, `npcflag`=1, `unit_class`=2, `unit_flags`=33536 WHERE `entry`=54679;
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `exp`=1, `faction`=1660, `npcflag`=1, `unit_class`=2, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=54850;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=14 WHERE `entry`=54051;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `faction`=14 WHERE `entry`=54564;

UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|536941137 WHERE `entry`=57270;

UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`|1 WHERE `entry`=56370;
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=54850;
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=54679;
