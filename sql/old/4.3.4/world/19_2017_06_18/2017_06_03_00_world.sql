-- Condition for source Quest accept condition type Quest rewarded
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceGroup`=0 AND `SourceEntry`=25986 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 25986, 0, 0, 8, 0, 432, 0, 0, 0, 0, 0, '', 'Show quest Trouble at the Lake if quest Those Blasted Troggs! has been rewarded.'),
(19, 0, 25986, 0, 0, 8, 0, 433, 0, 0, 0, 0, 0, '', 'Show quest Trouble at the Lake if quest The Public Servant has been rewarded.'),
(19, 0, 25986, 0, 0, 8, 0, 25937, 0, 0, 0, 0, 0, '', 'Show quest Trouble at the Lake if quest Priceless Treasures has been rewarded.'),
(19, 0, 25986, 0, 0, 14, 0, 25978, 0, 0, 0, 0, 0, '', 'Show quest Trouble at the Lake if quest Entombed in Ice has not been taken.');

-- Pathing for Boss Galgosh Entry: 1398 RARE
SET @NPC := 287524;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5711.02,`position_y`=-3901.21,`position_z`=326.72 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5711.02,-3901.21,326.72,0,0,0,0,100,0),
(@PATH,2,-5718.34,-3906.33,322.7523,0,0,0,0,100,0),
(@PATH,3,-5721.16,-3909.24,322.143,0,0,0,0,100,0),
(@PATH,4,-5729.82,-3913.21,322.1269,0,0,0,0,100,0),
(@PATH,5,-5730.58,-3923.5,317.9297,0,0,0,0,100,0),
(@PATH,6,-5730.43,-3931.86,319.9119,0,0,0,0,100,0),
(@PATH,7,-5724.348,-3938.486,324.1837,0,0,0,0,100,0),
(@PATH,8,-5712.99,-3945.14,325.0587,0,0,0,0,100,0),
(@PATH,9,-5704.21,-3943.77,325.1837,0,0,0,0,100,0),
(@PATH,10,-5692.13,-3942.74,325.0623,0,0,0,0,100,0),
(@PATH,11,-5685.79,-3937.63,324.8777,0,0,0,0,100,0),
(@PATH,12,-5679.1,-3935.32,325.3846,0,0,0,0,100,0),
(@PATH,13,-5672.12,-3934.6,325.1721,0,0,0,0,100,0),
(@PATH,14,-5662.17,-3934.01,325.1294,0,0,0,0,100,0),
(@PATH,15,-5652.52,-3934.68,325.2402,0,0,0,0,100,0),
(@PATH,16,-5642.2,-3934.77,325.1531,0,0,0,0,100,0),
(@PATH,17,-5635.11,-3929.61,325.9315,0,0,0,0,100,0),
(@PATH,18,-5626.13,-3927.55,326.9138,0,0,0,0,100,0),
(@PATH,19,-5615.84,-3929.1,325.0119,0,0,0,0,100,0),
(@PATH,20,-5597.67,-3924.75,324.236,0,0,0,0,100,0),
(@PATH,21,-5586.46,-3914.73,328.1383,0,0,0,0,100,0),
(@PATH,22,-5585.04,-3903.07,329.7013,0,0,0,0,100,0),
(@PATH,23,-5585.25,-3888.58,329.2209,0,0,0,0,100,0),
(@PATH,24,-5584.27,-3886.47,329.4289,0,0,0,0,100,0),
(@PATH,25,-5585.04,-3903.07,329.7013,0,0,0,0,100,0),
(@PATH,26,-5586.46,-3914.73,328.1383,0,0,0,0,100,0),
(@PATH,27,-5597.67,-3924.75,324.236,0,0,0,0,100,0),
(@PATH,28,-5615.84,-3929.1,325.0119,0,0,0,0,100,0),
(@PATH,29,-5626.13,-3927.55,326.9138,0,0,0,0,100,0),
(@PATH,30,-5635.11,-3929.61,325.9315,0,0,0,0,100,0),
(@PATH,31,-5642.2,-3934.77,325.1531,0,0,0,0,100,0),
(@PATH,32,-5652.52,-3934.68,325.2402,0,0,0,0,100,0),
(@PATH,33,-5662.17,-3934.01,325.1294,0,0,0,0,100,0),
(@PATH,34,-5672.12,-3934.6,325.1721,0,0,0,0,100,0),
(@PATH,35,-5679.1,-3935.32,325.3846,0,0,0,0,100,0),
(@PATH,36,-5685.79,-3937.63,324.8777,0,0,0,0,100,0),
(@PATH,37,-5692.13,-3942.74,325.0623,0,0,0,0,100,0),
(@PATH,38,-5704.21,-3943.77,325.1837,0,0,0,0,100,0),
(@PATH,39,-5712.99,-3945.14,325.0587,0,0,0,0,100,0),
(@PATH,40,-5724.25,-3938.6,324.2255,0,0,0,0,100,0),
(@PATH,41,-5730.43,-3931.86,319.9119,0,0,0,0,100,0),
(@PATH,42,-5730.58,-3923.5,317.9297,0,0,0,0,100,0),
(@PATH,43,-5730.55,-3914.5,322.1151,0,0,0,0,100,0),
(@PATH,44,-5729.82,-3913.21,322.1269,0,0,0,0,100,0),
(@PATH,45,-5721.16,-3909.24,322.143,0,0,0,0,100,0),
(@PATH,46,-5718.34,-3906.33,322.7523,0,0,0,0,100,0),
(@PATH,47,-5711.02,-3901.21,326.72,0,0,0,0,100,0),
(@PATH,48,-5706.34,-3897.84,327.7111,0,0,0,0,100,0),
(@PATH,49,-5703.75,-3895.23,328.9466,0,0,0,0,100,0),
(@PATH,50,-5702.64,-3893.34,329.3868,0,0,0,0,100,0),
(@PATH,51,-5702.01,-3886.26,330.6119,0,0,0,0,100,0),
(@PATH,52,-5701.6,-3877.02,331.8513,0,0,0,0,100,0),
(@PATH,53,-5699.78,-3868.81,331.6151,0,0,0,0,100,0),
(@PATH,54,-5701.6,-3877.02,331.8513,0,0,0,0,100,0),
(@PATH,55,-5702.01,-3886.26,330.6119,0,0,0,0,100,0),
(@PATH,56,-5702.64,-3893.34,329.3868,0,0,0,0,100,0),
(@PATH,57,-5703.75,-3895.23,328.9466,0,0,0,0,100,0),
(@PATH,58,-5706.34,-3897.84,327.7111,0,0,0,0,100,0);

-- Pathing for Optimo Entry: 45399 RARE 
SET @NPC := 287283;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5901.35,`position_y`=-4034.22,`position_z`=359.4819 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5901.35,-4034.22,359.4819,0,0,0,0,100,0),
(@PATH,2,-5920.3,-4022.63,365.7377,0,0,0,0,100,0),
(@PATH,3,-5921.82,-4010.22,365.0322,0,0,0,0,100,0),
(@PATH,4,-5928.51,-3995.06,362.8831,0,0,0,0,100,0),
(@PATH,5,-5919.675,-3982.838,362.4345,0,0,0,0,100,0),
(@PATH,6,-5908.51,-3976.65,363.3376,0,0,0,0,100,0),
(@PATH,7,-5903.186,-3970.937,363.1561,0,0,0,0,100,0),
(@PATH,8,-5900.04,-3963.4,362.3214,0,0,0,0,100,0),
(@PATH,9,-5919.59,-3982.72,362.4231,0,0,0,0,100,0),
(@PATH,10,-5928.51,-3995.06,362.8831,0,0,0,0,100,0),
(@PATH,11,-5921.82,-4010.22,365.0322,0,0,0,0,100,0),
(@PATH,12,-5920.3,-4022.63,365.7377,0,0,0,0,100,0),
(@PATH,13,-5901.35,-4034.22,359.4819,0,0,0,0,100,0),
(@PATH,14,-5898.77,-4047.36,355.9928,0,0,0,0,100,0),
(@PATH,15,-5901.39,-4066.37,350.8521,0,0,0,0,100,0),
(@PATH,16,-5919.67,-4079.77,349.6499,0,0,0,0,100,0),
(@PATH,17,-5939.78,-4084.32,348.158,0,0,0,0,100,0),
(@PATH,18,-5961.41,-4102.88,346.0687,0,0,0,0,100,0),
(@PATH,19,-5986.71,-4102.96,350.3643,0,0,0,0,100,0),
(@PATH,20,-6000.075,-4104.422,353.2425,0,0,0,0,100,0),
(@PATH,21,-6018.34,-4109.22,359.6766,0,0,0,0,100,0),
(@PATH,22,-6019.76,-4121.52,360.933,0,0,0,0,100,0),
(@PATH,23,-6003.43,-4137.17,360.2916,0,0,0,0,100,0),
(@PATH,24,-5983.769,-4135.199,362.768,0,0,0,0,100,0),
(@PATH,25,-5961.699,-4129.545,365.78,0,0,0,0,100,0),
(@PATH,26,-5943.18,-4129.8,362.781,0,0,0,0,100,0),
(@PATH,27,-5926.39,-4142.83,360.7458,0,0,0,0,100,0),
(@PATH,28,-5909.61,-4146.64,358.4374,0,0,0,0,100,0),
(@PATH,29,-5901.11,-4137.8,357.7661,0,0,0,0,100,0),
(@PATH,30,-5908.67,-4129.9,356.6753,0,0,0,0,100,0),
(@PATH,31,-5915.38,-4123.4,355.8473,0,0,0,0,100,0),
(@PATH,32,-5917.91,-4112.65,354.1391,0,0,0,0,100,0),
(@PATH,33,-5920.76,-4099.43,355.1503,0,0,0,0,100,0),
(@PATH,34,-5921.99,-4092.73,356.7483,0,0,0,0,100,0),
(@PATH,35,-5917.91,-4112.65,354.1391,0,0,0,0,100,0),
(@PATH,36,-5915.38,-4123.4,355.8473,0,0,0,0,100,0),
(@PATH,37,-5908.67,-4129.9,356.6753,0,0,0,0,100,0),
(@PATH,38,-5901.11,-4137.8,357.7661,0,0,0,0,100,0),
(@PATH,39,-5909.61,-4146.64,358.4374,0,0,0,0,100,0),
(@PATH,40,-5926.39,-4142.83,360.7458,0,0,0,0,100,0),
(@PATH,41,-5943.18,-4129.8,362.781,0,0,0,0,100,0),
(@PATH,42,-5961.434,-4129.512,365.7704,0,0,0,0,100,0),
(@PATH,43,-5983.68,-4135.19,362.7894,0,0,0,0,100,0),
(@PATH,44,-6003.43,-4137.17,360.2916,0,0,0,0,100,0),
(@PATH,45,-6019.76,-4121.52,360.933,0,0,0,0,100,0),
(@PATH,46,-6018.34,-4109.22,359.6766,0,0,0,0,100,0),
(@PATH,47,-6000.24,-4104.44,353.2889,0,0,0,0,100,0),
(@PATH,48,-5986.71,-4102.96,350.3643,0,0,0,0,100,0),
(@PATH,49,-5961.41,-4102.88,346.0687,0,0,0,0,100,0),
(@PATH,50,-5939.809,-4084.345,348.1514,0,0,0,0,100,0),
(@PATH,51,-5919.67,-4079.77,349.6499,0,0,0,0,100,0),
(@PATH,52,-5901.39,-4066.37,350.8521,0,0,0,0,100,0),
(@PATH,53,-5898.77,-4047.36,355.9928,0,0,0,0,100,0);

-- Pathing for Ironforge Mountaineer Entry: 727
SET @NPC := 306424;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5719.586,`position_y`=-550.4644,`position_z`=398.7685 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,258,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5719.586,-550.4644,398.7685,0,0,0,0,100,0),
(@PATH,2,-5712.108,-554.6284,398.4516,0,0,0,0,100,0),
(@PATH,3,-5704.653,-558.712,399.4442,0,0,0,0,100,0),
(@PATH,4,-5694.355,-562.8688,400.0139,0,0,0,0,100,0),
(@PATH,5,-5688.045,-570.8251,401.376,0,0,0,0,100,0),
(@PATH,6,-5683.653,-570.796,401.3057,0,0,0,0,100,0),
(@PATH,7,-5689.913,-561.7245,399.6221,0,0,0,0,100,0),
(@PATH,8,-5701.13,-556.4327,399.5258,0,0,0,0,100,0),
(@PATH,9,-5710.505,-551.1133,398.599,0,0,0,0,100,0),
(@PATH,10,-5718.614,-546.7613,398.9713,0,0,0,0,100,0),
(@PATH,11,-5710.505,-551.1133,398.599,0,0,0,0,100,0),
(@PATH,12,-5701.13,-556.4327,399.5258,0,0,0,0,100,0),
(@PATH,13,-5689.913,-561.7245,399.6221,0,0,0,0,100,0),
(@PATH,14,-5683.653,-570.796,401.3057,0,0,0,0,100,0),
(@PATH,15,-5688.045,-570.8251,401.376,0,0,0,0,100,0),
(@PATH,16,-5694.256,-562.9922,400.1756,0,0,0,0,100,0),
(@PATH,17,-5704.653,-558.712,399.4442,0,0,0,0,100,0),
(@PATH,18,-5712.108,-554.6284,398.4516,0,0,0,0,100,0);
