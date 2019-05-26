-- Pathing for  Entry: 50058 'TDB FORMAT' 
SET @NPC := 389234;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4126.797,`position_y`=-3177.688,`position_z`=950.3358 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4126.797,-3177.688,950.3358,0,0,0,0,100,0),
(@PATH,2,4099.541,-3202.306,950.4251,0,0,0,0,100,0),
(@PATH,3,4077.642,-3176.266,950.4214,0,0,0,0,100,0),
(@PATH,4,4044.2,-3167.99,950.1903,0,0,0,0,100,0),
(@PATH,5,4033.431,-3183.484,950.2645,0,0,0,0,100,0),
(@PATH,6,4031.548,-3207.445,950.2204,0,0,0,0,100,0),
(@PATH,7,4051.59,-3218.481,950.2161,0,0,0,0,100,0),
(@PATH,8,4064.445,-3233.363,950.298,0,0,0,0,100,0),
(@PATH,9,4058.747,-3245.755,950.298,0,0,0,0,100,0),
(@PATH,10,4037.719,-3276.592,950.2196,0,0,0,0,100,0),
(@PATH,11,4037.316,-3297.813,950.2196,0,0,0,0,100,0),
(@PATH,12,4071.481,-3314.851,950.298,0,0,0,0,100,0),
(@PATH,13,4080.672,-3349.877,950.298,0,0,0,0,100,0),
(@PATH,14,4057.445,-3356.042,950.2372,0,0,0,0,100,0),
(@PATH,15,4062.219,-3335.241,950.2372,0,0,0,0,100,0),
(@PATH,16,4053.511,-3309.304,950.298,0,0,0,0,100,0),
(@PATH,17,4025.102,-3282.568,950.2274,0,0,0,0,100,0),
(@PATH,18,4010.321,-3254.802,950.2906,0,0,0,0,100,0),
(@PATH,19,3991.856,-3226.946,950.2852,0,0,0,0,100,0),
(@PATH,20,3974.884,-3210.762,950.2852,0,0,0,0,100,0),
(@PATH,21,3948.589,-3222.128,950.2712,0,0,0,0,100,0),
(@PATH,22,3930.121,-3230.28,950.207,0,0,0,0,100,0),
(@PATH,23,3906.49,-3217.059,950.207,0,0,0,0,100,0),
(@PATH,24,3884.261,-3213.009,950.248,0,0,0,0,100,0),
(@PATH,25,3859.883,-3206.503,950.2002,0,0,0,0,100,0),
(@PATH,26,3858.437,-3180.198,950.298,0,0,0,0,100,0),
(@PATH,27,3846.56,-3162.193,950.261,0,0,0,0,100,0),
(@PATH,28,3840.135,-3141.521,950.4117,0,0,0,0,100,0),
(@PATH,29,3817.962,-3140.042,950.4295,0,0,0,0,100,0),
(@PATH,30,3808.899,-3126.359,950.4639,0,0,0,0,100,0),
(@PATH,31,3793.963,-3124.644,950.4965,0,0,0,0,100,0),
(@PATH,32,3808.899,-3126.359,950.4639,0,0,0,0,100,0),
(@PATH,33,3817.962,-3140.042,950.4295,0,0,0,0,100,0),
(@PATH,34,3840.135,-3141.521,950.4117,0,0,0,0,100,0),
(@PATH,35,3846.56,-3162.193,950.261,0,0,0,0,100,0),
(@PATH,36,3858.437,-3180.198,950.298,0,0,0,0,100,0),
(@PATH,37,3859.883,-3206.503,950.2002,0,0,0,0,100,0),
(@PATH,38,3884.261,-3213.009,950.248,0,0,0,0,100,0),
(@PATH,39,3906.49,-3217.059,950.207,0,0,0,0,100,0),
(@PATH,40,3930.121,-3230.28,950.207,0,0,0,0,100,0),
(@PATH,41,3948.589,-3222.128,950.2712,0,0,0,0,100,0),
(@PATH,42,3974.884,-3210.762,950.2852,0,0,0,0,100,0),
(@PATH,43,3991.856,-3226.946,950.2852,0,0,0,0,100,0),
(@PATH,44,4010.321,-3254.802,950.2906,0,0,0,0,100,0),
(@PATH,45,4025.102,-3282.568,950.2274,0,0,0,0,100,0),
(@PATH,46,4053.511,-3309.304,950.298,0,0,0,0,100,0),
(@PATH,47,4062.219,-3335.241,950.2372,0,0,0,0,100,0),
(@PATH,48,4057.445,-3356.042,950.2372,0,0,0,0,100,0),
(@PATH,49,4080.672,-3349.877,950.298,0,0,0,0,100,0),
(@PATH,50,4071.481,-3314.851,950.298,0,0,0,0,100,0),
(@PATH,51,4037.316,-3297.813,950.2196,0,0,0,0,100,0),
(@PATH,52,4037.719,-3276.592,950.2196,0,0,0,0,100,0),
(@PATH,53,4058.747,-3245.755,950.298,0,0,0,0,100,0),
(@PATH,54,4064.445,-3233.363,950.298,0,0,0,0,100,0),
(@PATH,55,4051.59,-3218.481,950.2161,0,0,0,0,100,0),
(@PATH,56,4031.548,-3207.445,950.2204,0,0,0,0,100,0),
(@PATH,57,4033.431,-3183.484,950.2645,0,0,0,0,100,0),
(@PATH,58,4044.2,-3167.99,950.1903,0,0,0,0,100,0),
(@PATH,59,4077.642,-3176.266,950.4214,0,0,0,0,100,0),
(@PATH,60,4099.541,-3202.306,950.4251,0,0,0,0,100,0),
(@PATH,61,4126.797,-3177.688,950.3358,0,0,0,0,100,0),
(@PATH,62,4147.719,-3151.613,950.3467,0,0,0,0,100,0),
(@PATH,63,4142.729,-3112.814,950.3542,0,0,0,0,100,0),
(@PATH,64,4151.068,-3086.503,950.421,0,0,0,0,100,0),
(@PATH,65,4153.577,-3047.703,950.421,0,0,0,0,100,0),
(@PATH,66,4168.38,-3027.212,950.4654,0,0,0,0,100,0),
(@PATH,67,4176.624,-3009.679,950.4654,0,0,0,0,100,0),
(@PATH,68,4168.38,-3027.212,950.4654,0,0,0,0,100,0),
(@PATH,69,4153.577,-3047.703,950.421,0,0,0,0,100,0),
(@PATH,70,4151.068,-3086.503,950.421,0,0,0,0,100,0),
(@PATH,71,4142.729,-3112.814,950.3542,0,0,0,0,100,0),
(@PATH,72,4147.719,-3151.613,950.3467,0,0,0,0,100,0),
(@PATH,73,4126.797,-3177.688,950.3358,0,0,0,0,100,0);
-- 0x204100002030E28000000E0000778C99 .go xyz 4126.797 -3177.688 950.3358

-- Pathing for  Entry: 50053 'TDB FORMAT' 
SET @NPC := 384200;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5237.075,`position_y`=-3021.51,`position_z`=1561.182 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5237.075,-3021.51,1561.182,0,0,0,0,100,0),
(@PATH,2,5243.623,-3045.361,1564.983,0,0,0,0,100,0),
(@PATH,3,5255.871,-3072.79,1572.789,0,0,0,0,100,0),
(@PATH,4,5267.572,-3093.361,1578.062,0,0,0,0,100,0),
(@PATH,5,5282.075,-3106.856,1581.168,0,0,0,0,100,0),
(@PATH,6,5304.188,-3116.533,1587.315,0,0,0,0,100,0),
(@PATH,7,5321.646,-3135.311,1594.618,0,0,0,0,100,0),
(@PATH,8,5335.723,-3157,1601.185,0,0,0,0,100,0),
(@PATH,9,5344.767,-3177.894,1607.67,0,0,0,0,100,0),
(@PATH,10,5350.1,-3192.738,1611.55,0,0,0,0,100,0),
(@PATH,11,5355.405,-3205.12,1614.353,0,0,0,0,100,0),
(@PATH,12,5358.474,-3221.095,1616.823,0,0,0,0,100,0),
(@PATH,13,5365.362,-3240.594,1620.798,0,0,0,0,100,0),
(@PATH,14,5375.819,-3260.712,1625.692,0,0,0,0,100,0),
(@PATH,15,5381.632,-3275.132,1630.171,0,0,0,0,100,0),
(@PATH,16,5388.772,-3295.436,1639.317,0,0,0,0,100,0),
(@PATH,17,5400.378,-3309.641,1649.13,0,0,0,0,100,0),
(@PATH,18,5406.483,-3321.32,1654.851,0,0,0,0,100,0),
(@PATH,19,5405.934,-3320.281,1654.519,0,0,0,0,100,0),
(@PATH,20,5396.385,-3354.148,1655.348,0,0,0,0,100,0),
(@PATH,21,5382.691,-3368.55,1655.602,0,0,0,0,100,0),
(@PATH,22,5369.022,-3374.616,1655.602,0,0,0,0,100,0),
(@PATH,23,5351.131,-3369.922,1655.681,0,0,0,0,100,0),
(@PATH,24,5324.47,-3355.646,1656.347,0,0,0,0,100,0),
(@PATH,25,5298.932,-3343.997,1654.701,0,0,0,0,100,0),
(@PATH,26,5271.26,-3338.575,1651.564,0,0,0,0,100,0),
(@PATH,27,5273.414,-3339.02,1651.767,0,0,0,0,100,0),
(@PATH,28,5214.022,-3347.616,1642.635,0,0,0,0,100,0),
(@PATH,29,5194.637,-3357.195,1637.742,0,0,0,0,100,0),
(@PATH,30,5186.169,-3370.08,1632.861,0,0,0,0,100,0),
(@PATH,31,5184.27,-3389.821,1627.303,0,0,0,0,100,0),
(@PATH,32,5172.373,-3402.696,1622.716,0,0,0,0,100,0),
(@PATH,33,5162.81,-3420.712,1617.475,0,0,0,0,100,0),
(@PATH,34,5141.22,-3427.13,1616.569,0,0,0,0,100,0),
(@PATH,35,5131.471,-3440.611,1615.84,0,0,0,0,100,0),
(@PATH,36,5109.695,-3446.174,1615.251,0,0,0,0,100,0),
(@PATH,37,5131.471,-3440.611,1615.84,0,0,0,0,100,0),
(@PATH,38,5141.22,-3427.13,1616.569,0,0,0,0,100,0),
(@PATH,39,5162.81,-3420.712,1617.475,0,0,0,0,100,0),
(@PATH,40,5172.373,-3402.696,1622.716,0,0,0,0,100,0),
(@PATH,41,5184.27,-3389.821,1627.303,0,0,0,0,100,0),
(@PATH,42,5186.169,-3370.08,1632.861,0,0,0,0,100,0),
(@PATH,43,5194.637,-3357.195,1637.742,0,0,0,0,100,0),
(@PATH,44,5214.022,-3347.616,1642.635,0,0,0,0,100,0),
(@PATH,45,5243.295,-3341.726,1647.052,0,0,0,0,100,0),
(@PATH,46,5271.26,-3338.575,1651.564,0,0,0,0,100,0),
(@PATH,47,5298.932,-3343.997,1654.701,0,0,0,0,100,0),
(@PATH,48,5324.416,-3355.645,1656.348,0,0,0,0,100,0),
(@PATH,49,5351.131,-3369.922,1655.681,0,0,0,0,100,0),
(@PATH,50,5369.022,-3374.616,1655.602,0,0,0,0,100,0),
(@PATH,51,5382.691,-3368.55,1655.602,0,0,0,0,100,0),
(@PATH,52,5396.385,-3354.148,1655.348,0,0,0,0,100,0),
(@PATH,53,5405.932,-3338.405,1655.996,0,0,0,0,100,0),
(@PATH,54,5406.479,-3321.404,1654.894,0,0,0,0,100,0),
(@PATH,55,5400.378,-3309.641,1649.13,0,0,0,0,100,0),
(@PATH,56,5388.772,-3295.436,1639.317,0,0,0,0,100,0),
(@PATH,57,5381.632,-3275.132,1630.171,0,0,0,0,100,0),
(@PATH,58,5375.819,-3260.712,1625.692,0,0,0,0,100,0),
(@PATH,59,5365.362,-3240.594,1620.798,0,0,0,0,100,0),
(@PATH,60,5358.474,-3221.095,1616.823,0,0,0,0,100,0),
(@PATH,61,5355.405,-3205.12,1614.353,0,0,0,0,100,0),
(@PATH,62,5350.1,-3192.738,1611.55,0,0,0,0,100,0),
(@PATH,63,5344.767,-3177.894,1607.67,0,0,0,0,100,0),
(@PATH,64,5335.723,-3157,1601.185,0,0,0,0,100,0),
(@PATH,65,5321.646,-3135.311,1594.618,0,0,0,0,100,0),
(@PATH,66,5304.188,-3116.533,1587.315,0,0,0,0,100,0),
(@PATH,67,5282.203,-3106.924,1581.132,0,0,0,0,100,0),
(@PATH,68,5267.572,-3093.361,1578.062,0,0,0,0,100,0),
(@PATH,69,5255.871,-3072.79,1572.789,0,0,0,0,100,0),
(@PATH,70,5243.625,-3045.369,1564.919,0,0,0,0,100,0),
(@PATH,71,5237.075,-3021.51,1561.182,0,0,0,0,100,0),
(@PATH,72,5229.133,-3002.361,1560.071,0,0,0,0,100,0),
(@PATH,73,5222.127,-2983.832,1559.785,0,0,0,0,100,0),
(@PATH,74,5218.384,-2964.726,1560.4,0,0,0,0,100,0),
(@PATH,75,5232.068,-2941.471,1552.919,0,0,0,0,100,0),
(@PATH,76,5245.479,-2913.498,1544.206,0,0,0,0,100,0),
(@PATH,77,5263.723,-2888.24,1535.957,0,0,0,0,100,0),
(@PATH,78,5278.404,-2868.33,1530.203,0,0,0,0,100,0),
(@PATH,79,5285.874,-2846.701,1525.548,0,0,0,0,100,0),
(@PATH,80,5281.974,-2817.384,1521.314,0,0,0,0,100,0),
(@PATH,81,5277.874,-2793.229,1516.565,0,0,0,0,100,0),
(@PATH,82,5281.026,-2769.783,1510.622,0,0,0,0,100,0),
(@PATH,83,5289.062,-2748.012,1505.053,0,0,0,0,100,0),
(@PATH,84,5296.903,-2729.451,1498.544,0,0,0,0,100,0),
(@PATH,85,5314.102,-2707.778,1493.764,0,0,0,0,100,0),
(@PATH,86,5329.338,-2692.286,1489.772,0,0,0,0,100,0),
(@PATH,87,5347.444,-2678.688,1487.548,0,0,0,0,100,0),
(@PATH,88,5370.518,-2668.24,1484.903,0,0,0,0,100,0),
(@PATH,89,5388.651,-2663.642,1482.943,0,0,0,0,100,0),
(@PATH,90,5407.867,-2654.332,1484.052,0,0,0,0,100,0),
(@PATH,91,5427.881,-2644.545,1481.002,0,0,0,0,100,0),
(@PATH,92,5447.66,-2630.493,1480.311,0,0,0,0,100,0),
(@PATH,93,5471.818,-2618.396,1480.492,0,0,0,0,100,0),
(@PATH,94,5495.106,-2591.175,1484.413,0,0,0,0,100,0),
(@PATH,95,5505.352,-2569.74,1482.284,0,0,0,0,100,0),
(@PATH,96,5522.223,-2550.714,1481.885,0,0,0,0,100,0),
(@PATH,97,5529.495,-2522.057,1480.437,0,0,0,0,100,0),
(@PATH,98,5512.86,-2484.07,1476,0,0,0,0,100,0),
(@PATH,99,5499.51,-2448.377,1470.729,0,0,0,0,100,0),
(@PATH,100,5490.925,-2420.309,1467.602,0,0,0,0,100,0),
(@PATH,101,5468.779,-2413.373,1466.353,0,0,0,0,100,0),
(@PATH,102,5441.799,-2419.458,1467.405,0,0,0,0,100,0),
(@PATH,103,5427.038,-2447.318,1472.617,0,0,0,0,100,0), -- first path
(@PATH,104,5229.133,-3002.361,1560.071,0,0,0,0,100,0),
(@PATH,105,5237.075,-3021.51,1561.182,0,0,0,0,100,0),
(@PATH,106,5243.625,-3045.369,1564.919,0,0,0,0,100,0),
(@PATH,107,5255.871,-3072.79,1572.789,0,0,0,0,100,0),
(@PATH,108,5267.572,-3093.361,1578.062,0,0,0,0,100,0),
(@PATH,109,5282.203,-3106.924,1581.132,0,0,0,0,100,0),
(@PATH,110,5304.188,-3116.533,1587.315,0,0,0,0,100,0),
(@PATH,111,5321.646,-3135.311,1594.618,0,0,0,0,100,0),
(@PATH,112,5335.723,-3157,1601.185,0,0,0,0,100,0),
(@PATH,113,5344.767,-3177.894,1607.67,0,0,0,0,100,0),
(@PATH,114,5350.1,-3192.738,1611.55,0,0,0,0,100,0),
(@PATH,115,5355.405,-3205.12,1614.353,0,0,0,0,100,0),
(@PATH,116,5358.474,-3221.095,1616.823,0,0,0,0,100,0),
(@PATH,117,5365.362,-3240.594,1620.798,0,0,0,0,100,0),
(@PATH,118,5375.819,-3260.712,1625.692,0,0,0,0,100,0),
(@PATH,119,5381.632,-3275.132,1630.171,0,0,0,0,100,0),
(@PATH,120,5388.772,-3295.436,1639.317,0,0,0,0,100,0),
(@PATH,121,5400.378,-3309.641,1649.13,0,0,0,0,100,0),
(@PATH,122,5406.479,-3321.404,1654.894,0,0,0,0,100,0),
(@PATH,123,5405.932,-3338.405,1655.996,0,0,0,0,100,0),
(@PATH,124,5396.385,-3354.148,1655.348,0,0,0,0,100,0),
(@PATH,125,5382.691,-3368.55,1655.602,0,0,0,0,100,0),
(@PATH,126,5369.022,-3374.616,1655.602,0,0,0,0,100,0),
(@PATH,127,5351.131,-3369.922,1655.681,0,0,0,0,100,0),
(@PATH,128,5324.416,-3355.645,1656.348,0,0,0,0,100,0),
(@PATH,129,5298.932,-3343.997,1654.701,0,0,0,0,100,0),
(@PATH,130,5271.26,-3338.575,1651.564,0,0,0,0,100,0),
(@PATH,131,5243.295,-3341.726,1647.052,0,0,0,0,100,0),
(@PATH,132,5214.022,-3347.616,1642.635,0,0,0,0,100,0),
(@PATH,133,5194.637,-3357.195,1637.742,0,0,0,0,100,0),
(@PATH,134,5186.169,-3370.08,1632.861,0,0,0,0,100,0),
(@PATH,135,5184.27,-3389.821,1627.303,0,0,0,0,100,0),
(@PATH,136,5172.373,-3402.696,1622.716,0,0,0,0,100,0),
(@PATH,137,5162.81,-3420.712,1617.475,0,0,0,0,100,0),
(@PATH,138,5141.22,-3427.13,1616.569,0,0,0,0,100,0),
(@PATH,139,5131.471,-3440.611,1615.84,0,0,0,0,100,0),
(@PATH,140,5109.695,-3446.174,1615.251,0,0,0,0,100,0),
(@PATH,141,5131.471,-3440.611,1615.84,0,0,0,0,100,0),
(@PATH,142,5141.22,-3427.13,1616.569,0,0,0,0,100,0),
(@PATH,143,5162.81,-3420.712,1617.475,0,0,0,0,100,0),
(@PATH,144,5172.373,-3402.696,1622.716,0,0,0,0,100,0),
(@PATH,145,5184.27,-3389.821,1627.303,0,0,0,0,100,0),
(@PATH,146,5186.169,-3370.08,1632.861,0,0,0,0,100,0),
(@PATH,147,5194.637,-3357.195,1637.742,0,0,0,0,100,0),
(@PATH,148,5214.022,-3347.616,1642.635,0,0,0,0,100,0),
(@PATH,149,5273.414,-3339.02,1651.767,0,0,0,0,100,0),
(@PATH,150,5271.26,-3338.575,1651.564,0,0,0,0,100,0),
(@PATH,151,5298.932,-3343.997,1654.701,0,0,0,0,100,0),
(@PATH,152,5324.47,-3355.646,1656.347,0,0,0,0,100,0),
(@PATH,153,5351.131,-3369.922,1655.681,0,0,0,0,100,0),
(@PATH,154,5369.022,-3374.616,1655.602,0,0,0,0,100,0),
(@PATH,155,5382.691,-3368.55,1655.602,0,0,0,0,100,0),
(@PATH,156,5396.385,-3354.148,1655.348,0,0,0,0,100,0),
(@PATH,157,5405.934,-3320.281,1654.519,0,0,0,0,100,0),
(@PATH,158,5406.483,-3321.32,1654.851,0,0,0,0,100,0),
(@PATH,159,5400.378,-3309.641,1649.13,0,0,0,0,100,0),
(@PATH,160,5388.772,-3295.436,1639.317,0,0,0,0,100,0),
(@PATH,161,5381.632,-3275.132,1630.171,0,0,0,0,100,0),
(@PATH,162,5375.819,-3260.712,1625.692,0,0,0,0,100,0),
(@PATH,163,5365.362,-3240.594,1620.798,0,0,0,0,100,0),
(@PATH,164,5358.474,-3221.095,1616.823,0,0,0,0,100,0),
(@PATH,165,5355.405,-3205.12,1614.353,0,0,0,0,100,0),
(@PATH,166,5350.1,-3192.738,1611.55,0,0,0,0,100,0),
(@PATH,167,5344.767,-3177.894,1607.67,0,0,0,0,100,0),
(@PATH,168,5335.723,-3157,1601.185,0,0,0,0,100,0),
(@PATH,169,5321.646,-3135.311,1594.618,0,0,0,0,100,0),
(@PATH,170,5304.188,-3116.533,1587.315,0,0,0,0,100,0),
(@PATH,171,5282.075,-3106.856,1581.168,0,0,0,0,100,0),
(@PATH,172,5267.572,-3093.361,1578.062,0,0,0,0,100,0),
(@PATH,173,5255.871,-3072.79,1572.789,0,0,0,0,100,0),
(@PATH,174,5243.623,-3045.361,1564.983,0,0,0,0,100,0),
(@PATH,175,5237.075,-3021.51,1561.182,0,0,0,0,100,0);
-- 0x204100002030E14000000E00007E7190 .go xyz 5237.075 -3021.51 1561.182

