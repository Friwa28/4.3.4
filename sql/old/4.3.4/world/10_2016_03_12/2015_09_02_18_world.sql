--
SET @GUID := 142717;
SET @OLDGUID := 9778;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID+0 AND @GUID+269;
DELETE FROM `creature` WHERE `guid` BETWEEN @OLDGUID+0 AND @OLDGUID+269;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID+0, 24456, 582, 1, 1, 29.5627, 0.150031, 16.6147, 3.18002, 120, 0, 0),
(@GUID+1, 24993, 582, 1, 1, 13.1874, 7.71381, 6.07001, 3.09834, 120, 0, 0),
(@GUID+2, 24995, 582, 1, 1, 13.3456, -7.63689, 6.09325, 3.06064, 120, 0, 0),
(@GUID+3, 24996, 582, 1, 1, -0.258897, -7.62734, 4.80823, 5.66423, 120, 0, 0),
(@GUID+4, 24997, 582, 1, 1, -0.416482, 4.39825, 4.79739, 5.10346, 120, 0, 0),
(@GUID+5, 25007, 582, 1, 1, 21.2462, 1.87803, 11.7334, 3.19572, 120, 0, 0),
(@GUID+6, 25050, 586, 1, 1, 29.8662, -0.374622, 16.6206, 3.09382, 120, 0, 0),
(@GUID+7, 25051, 586, 1, 1, 13.4899, -7.71638, 6.11067, 3.11424, 120, 0, 0),
(@GUID+8, 25052, 586, 1, 1, 13.5093, 7.8287, 6.11039, 3.12838, 120, 0, 0),
(@GUID+9, 25054, 586, 1, 1, -21.8863, -2.61623, 4.33103, 6.14509, 120, 0, 0),
(@GUID+10, 25055, 586, 1, 1, -21.4646, 2.87105, 4.31055, 6.26055, 120, 0, 0),
(@GUID+11, 25056, 586, 1, 1, 20.3045, 1.2971, 11.7088, 3.06319, 120, 0, 0),
(@GUID+12, 3681, 587, 1, 1, -38.6477, -0.071194, 6.08577, 0.0698132, 120, 0, 0),
(@GUID+13, 3681, 587, 1, 1, 29.5623, 0.119925, 24.4539, 0.0872665, 120, 0, 0),
(@GUID+14, 25019, 587, 1, 1, 12.805, -7.60196, 6.10507, 2.9147, 120, 0, 0),
(@GUID+15, 25020, 587, 1, 1, 12.9539, 7.33394, 6.13112, 3.28122, 120, 0, 0),
(@GUID+16, 25021, 587, 1, 1, -21.4174, -2.8336, 4.39169, 6.24828, 120, 0, 0),
(@GUID+17, 25022, 587, 1, 1, 20.8633, -1.28591, 11.809, 2.94961, 120, 0, 0),
(@GUID+18, 25023, 587, 1, 1, -36.7691, 0.169367, 5.97592, 3.1765, 120, 0, 0),
(@GUID+19, 25024, 587, 1, 1, -21.6595, 3.22012, 4.40273, 0.139626, 120, 0, 0),
(@GUID+20, 25025, 587, 1, 1, 31.131, -0.454317, 16.7328, 2.96706, 120, 0, 0),
(@GUID+21, 25009, 588, 1, 1, 25.2165, 6.9111, 16.1459, 3.94958, 120, 0, 0),
(@GUID+22, 25010, 588, 1, 1, 13.2057, -2.817, 6.09989, 3.88733, 120, 0, 0),
(@GUID+23, 25011, 588, 1, 1, 19.2178, -8.20848, 12.1102, 4.81518, 120, 0, 0),
(@GUID+24, 25012, 588, 1, 1, 18.1475, -7.41572, 6.09809, 1.88535, 120, 0, 0),
(@GUID+25, 25013, 588, 1, 1, 0.194107, 9.84585, 6.09941, 3.08731, 120, 0, 0),
(@GUID+26, 25014, 588, 1, 1, -0.532552, -8.68575, 6.09815, 3.19019, 120, 0, 0),
(@GUID+27, 25015, 588, 1, 1, 34.0669, 0.119702, 18.287, 3.17832, 120, 0, 0),
(@GUID+28, 25016, 588, 1, 1, -11.1276, 6.60326, 6.09852, 3.05167, 120, 0, 0),
(@GUID+29, 25017, 588, 1, 1, 6.22581, 9.13103, 11.4836, 1.53614, 120, 0, 0),
(@GUID+30, 25018, 588, 1, 1, 10.2474, 2.78122, 11.803, 3.46823, 120, 0, 0),
(@GUID+31, 24924, 589, 1, 1, -1.2076, -9.94886, -23.6749, 0.15708, 120, 0, 0),
(@GUID+32, 24926, 589, 1, 1, -10.3057, -12.1052, -16.9691, 5.92724, 120, 0, 0),
(@GUID+33, 24927, 589, 1, 1, -1.87417, -7.84711, -23.6872, 3.38594, 120, 0, 0),
(@GUID+34, 24929, 589, 1, 1, 9.08301, -4.96411, -23.5921, 1.59406, 120, 0, 0),
(@GUID+35, 24930, 589, 1, 1, -17.0083, -7.87488, -15.1878, 3.14159, 120, 0, 0),
(@GUID+36, 24931, 589, 1, 1, 7.88492, -11.1513, -17.7623, 4.90483, 120, 0, 0),
(@GUID+37, 24934, 589, 1, 1, 9.20919, -3.50392, -23.5121, 3.12414, 120, 0, 0),
(@GUID+38, 24935, 589, 1, 1, 9.55492, -12.0229, -23.5059, 3.12414, 120, 0, 0),
(@GUID+39, 25075, 589, 1, 1, -2.70556, -7.84588, -23.6967, 0.0349066, 120, 0, 0),
(@GUID+40, 25080, 589, 1, 1, -4.91002, -4.74236, -17.6153, 1.6057, 120, 0, 0),
(@GUID+41, 25081, 589, 1, 1, -4.93939, -10.8049, -17.6109, 4.71239, 120, 0, 0),
(@GUID+42, 24934, 590, 1, 1, 9.63549, -3.67192, -23.588, 6.25904, 120, 0, 0),
(@GUID+43, 24935, 590, 1, 1, 9.79838, -11.8681, -23.5848, 6.25118, 120, 0, 0),
(@GUID+44, 25075, 590, 1, 1, -3.59133, -7.84061, -23.7802, 6.1969, 120, 0, 0),
(@GUID+45, 25100, 590, 1, 1, -0.411733, -5.7239, -23.7457, 3.70414, 120, 0, 0),
(@GUID+46, 25101, 590, 1, 1, 7.56919, -4.02088, -17.7543, 4.77071, 120, 0, 0),
(@GUID+47, 25102, 590, 1, 1, -11.0882, -3.47446, -16.7988, 2.00924, 120, 0, 0),
(@GUID+48, 25103, 590, 1, 1, 7.59398, -11.5166, -17.7745, 1.62204, 120, 0, 0),
(@GUID+49, 25104, 590, 1, 1, -0.898213, -7.76559, -23.7548, 3.11116, 120, 0, 0),
(@GUID+50, 25105, 590, 1, 1, -9.54405, -7.94072, -17.2053, 3.17242, 120, 0, 0),
(@GUID+51, 25106, 590, 1, 1, -4.93938, -10.9634, -17.6988, 4.76285, 120, 0, 0),
(@GUID+52, 25107, 590, 1, 1, -4.98215, -4.67863, -17.696, 1.59455, 120, 0, 0),
(@GUID+53, 15214, 591, 1, 1, 7.0053, -7.64791, -16.1126, 2.89725, 120, 0, 0),
(@GUID+54, 24934, 591, 1, 1, -4.5165, -13.1125, -22.5947, 1.53589, 120, 0, 0),
(@GUID+55, 24935, 591, 1, 1, -6.37827, -13.1838, -22.5939, 4.71239, 120, 0, 0),
(@GUID+56, 25070, 591, 1, 1, -9.40787, -8.02398, -17.1578, 3.1765, 120, 0, 0),
(@GUID+57, 25071, 591, 1, 1, 7.24887, -5.48033, -17.6859, 4.81711, 120, 0, 0),
(@GUID+58, 25072, 591, 1, 1, 8.00807, -10.7134, -17.6737, 1.16937, 120, 0, 0),
(@GUID+59, 25074, 591, 1, 1, 5.02375, -7.69781, -17.7888, 5.98648, 120, 0, 0),
(@GUID+60, 25075, 591, 1, 1, -4.16189, -7.68752, -23.6975, 0, 120, 0, 0),
(@GUID+61, 25075, 591, 1, 1, 4.36215, -2.25417, -23.59, 4.71239, 120, 0, 0),
(@GUID+62, 25075, 591, 1, 1, -3.31418, -6.12881, -23.6984, 4.67748, 120, 0, 0),
(@GUID+63, 25075, 591, 1, 1, 4.48208, -13.4008, -23.59, 1.62316, 120, 0, 0),
(@GUID+64, 25075, 591, 1, 1, -3.30777, -9.47416, -23.6959, 1.55334, 120, 0, 0),
(@GUID+65, 25075, 591, 1, 1, 10.7034, -3.50542, -23.49, 3.24631, 120, 0, 0),
(@GUID+66, 25075, 591, 1, 1, -8.87581, -11.4028, -22.5883, 6.24828, 120, 0, 0),
(@GUID+67, 25075, 591, 1, 1, 10.8261, -12.1854, -23.4895, 3.1765, 120, 0, 0),
(@GUID+68, 25075, 591, 1, 1, 11.7436, -10.4452, -24.2189, 6.16101, 120, 0, 0),
(@GUID+69, 25076, 591, 1, 1, -2.72723, -7.77286, -23.6968, 1.55334, 120, 0, 0),
(@GUID+70, 25077, 591, 1, 1, -19.6886, -8.17058, -14.3765, 3.1765, 120, 0, 0),
(@GUID+71, 25079, 591, 1, 1, -5.1094, -11.1466, -17.606, 4.4855, 120, 0, 0),
(@GUID+72, 25083, 591, 1, 1, -5.2125, -4.92702, -17.5966, 1.43117, 120, 0, 0),
(@GUID+73, 25171, 591, 1, 1, -8.70329, -11.4079, -22.5887, 0.0349066, 120, 0, 0),
(@GUID+74, 25078, 593, 1, 1, 34.095, 3.54049, 17.8892, 5.50987, 120, 0, 0),
(@GUID+75, 25082, 593, 1, 1, 15.6121, 1.09944, 6.09764, 2.52482, 120, 0, 0),
(@GUID+76, 25089, 593, 1, 1, 17.8437, -7.84575, 6.09877, 1.64493, 120, 0, 0),
(@GUID+77, 25093, 593, 1, 1, 15.8067, -5.80051, 11.9732, 1.86484, 120, 0, 0),
(@GUID+78, 25094, 593, 1, 1, 34.0585, -0.04162, 18.2865, 3.17017, 120, 0, 0),
(@GUID+79, 25095, 593, 1, 1, 9.39981, 9.17899, 11.5941, 1.52083, 120, 0, 0),
(@GUID+80, 25097, 593, 1, 1, -11.4014, 6.67999, 6.09785, 2.93715, 120, 0, 0),
(@GUID+81, 25111, 593, 1, 1, 6.20811, 0.005208, 14.0554, 2.54813, 120, 0, 0),
(@GUID+82, 24910, 594, 1, 1, 34.6962, -0.27625, 20.9157, 3.44936, 120, 0, 0),
(@GUID+83, 24911, 594, 1, 1, -3.08712, 11.1947, 8.6042, 1.59543, 120, 0, 0),
(@GUID+84, 24911, 594, 1, 1, -3.00336, -1.39497, 8.72655, 0.455023, 120, 0, 0),
(@GUID+85, 24911, 594, 1, 1, 29.079, 6.02911, 19.504, 1.29931, 120, 0, 0),
(@GUID+86, 24911, 594, 1, 1, -11.92, 6.82298, 8.72743, 2.64628, 120, 0, 0),
(@GUID+87, 24911, 594, 1, 1, 19.1465, -9.70741, 14.7601, 4.79434, 120, 0, 0),
(@GUID+88, 24911, 594, 1, 1, 5.55254, 10.6903, 14.0795, 1.41713, 120, 0, 0),
(@GUID+89, 24911, 594, 1, 1, 5.53691, -10.9158, 14.0808, 4.59956, 120, 0, 0),
(@GUID+90, 24911, 594, 1, 1, 19.1591, 9.74589, 14.7625, 1.55457, 120, 0, 0),
(@GUID+91, 24911, 594, 1, 1, -10.8992, 6.36276, 20.589, 1.29146, 120, 0, 0),
(@GUID+92, 24911, 594, 1, 1, -1.47544, 9.97225, 8.72811, 1.47291, 120, 0, 0),
(@GUID+93, 24911, 594, 1, 1, -15.0531, 6.78103, 21.0344, 1.54279, 120, 0, 0),
(@GUID+94, 24911, 594, 1, 1, 0.568386, 10.818, 8.68709, 1.24593, 120, 0, 0),
(@GUID+95, 24911, 594, 1, 1, -16.544, 7.01147, 21.3668, 1.52708, 120, 0, 0),
(@GUID+96, 24992, 594, 1, 1, -13.669, 5.23144, 19.2894, 1.4721, 120, 0, 0),
(@GUID+97, 25026, 594, 1, 1, 5.50506, 5.17797, 1.39596, 1.53711, 120, 0, 0),
(@GUID+98, 25026, 594, 1, 1, -3.34169, -4.92735, 1.39595, 4.70933, 120, 0, 0),
(@GUID+99, 25026, 594, 1, 1, -2.64281, 5.46732, 1.39595, 0.520802, 120, 0, 0),
(@GUID+100, 25026, 594, 1, 1, 6.52141, 0.490373, 1.39693, 6.00288, 120, 0, 0),
(@GUID+101, 25026, 594, 1, 1, 23.0708, -2.7187, 1.39595, 5.37378, 120, 0, 0),
(@GUID+102, 25026, 594, 1, 1, 15.3122, 6.40496, 1.39596, 4.24673, 120, 0, 0),
(@GUID+103, 25026, 594, 1, 1, 24.9381, 4.10155, 1.44058, 1.07922, 120, 0, 0),
(@GUID+104, 25026, 594, 1, 1, 14.4097, -6.40611, 1.39596, 1.86383, 120, 0, 0),
(@GUID+105, 25026, 594, 1, 1, 5.51407, -5.26758, 1.39596, 4.38889, 120, 0, 0),
(@GUID+106, 25075, 610, 1, 1, 4.36215, -2.25417, -23.59, 4.71239, 120, 0, 0),
(@GUID+107, 31704, 610, 1, 1, 5.21605, -2.36685, -17.8223, 1.04622, 120, 0, 0),
(@GUID+108, 31705, 610, 1, 1, 5.07824, -13.1188, -17.8135, 5.24182, 120, 0, 0),
(@GUID+109, 31706, 610, 1, 1, -16.8964, -10.8497, -15.9745, 4.64346, 120, 0, 0),
(@GUID+110, 31708, 610, 1, 1, -2.74581, -1.47146, -17.7765, 4.67712, 120, 0, 0),
(@GUID+111, 31715, 610, 1, 1, -3.54276, -13.8752, -17.684, 1.53946, 120, 0, 0),
(@GUID+112, 31716, 610, 1, 1, 11.5731, -7.65137, -16.6839, 3.20372, 120, 0, 0),
(@GUID+113, 31759, 612, 1, 1, -9.17065, -9.22241, 9.44523, 4.33964, 120, 0, 0),
(@GUID+114, 31760, 612, 1, 1, -24.342, -1.4956, 11.7907, 4.53119, 120, 0, 0),
(@GUID+115, 31761, 612, 1, 1, 17.25, 3.98267, 9.8274, 1.12707, 120, 0, 0),
(@GUID+116, 31762, 612, 1, 1, 34.0835, -0.002845, 19.7971, 3.12414, 120, 0, 0),
(@GUID+117, 31763, 612, 1, 1, 30.1151, -5.08848, 19.3282, 3.08923, 120, 0, 0),
(@GUID+118, 31764, 612, 1, 1, 26.0707, 2.05775, 19.328, 3.00197, 120, 0, 0),
(@GUID+119, 25075, 613, 1, 1, 9.44542, -7.84947, -16.6006, 0.0523599, 120, 0, 0),
(@GUID+120, 31720, 613, 1, 1, -16.5685, -5.08333, -15.9421, 1.98968, 120, 0, 0),
(@GUID+121, 31723, 613, 1, 1, -10.7552, -12.8129, -16.7745, 4.53786, 120, 0, 0),
(@GUID+122, 31724, 613, 1, 1, 5.77627, -2.00469, -17.7218, 1.64061, 120, 0, 0),
(@GUID+123, 31725, 613, 1, 1, 10.6984, -7.82192, -16.6006, 3.28122, 120, 0, 0),
(@GUID+124, 31726, 613, 1, 1, -3.45307, -13.7896, -17.6111, 1.16964, 120, 0, 0),
(@GUID+125, 31727, 613, 1, 1, -3.38308, -1.91393, -17.6198, 5.47991, 120, 0, 0),
(@GUID+126, 31788, 614, 1, 1, 27.5951, -2.34424, 19.3281, 3.22886, 120, 0, 0),
(@GUID+127, 31789, 614, 1, 1, 28.0998, 5.9939, 19.328, 3.64774, 120, 0, 0),
(@GUID+128, 31790, 614, 1, 1, 34.2236, 0.067648, 19.7627, 3.07178, 120, 0, 0),
(@GUID+129, 31791, 614, 1, 1, 0.919363, 8.75723, 9.43661, 1.25664, 120, 0, 0),
(@GUID+130, 31792, 614, 1, 1, -4.76611, 0.0998535, 9.36669, 4.83456, 120, 0, 0),
(@GUID+131, 31793, 614, 1, 1, 17.146, -3.92139, 9.81305, 5.49708, 120, 0, 0),
(@GUID+132, 29795, 622, 1, 1, 45.6197, 7.29317, 30.0955, 4.67642, 120, 0, 0),
(@GUID+133, 30752, 622, 1, 1, 15.4321, 28.6642, 9.92277, 1.54012, 120, 0, 0),
(@GUID+134, 30752, 622, 1, 1, 2.01988, 28.7211, 9.33565, 1.58332, 120, 0, 0),
(@GUID+135, 30752, 622, 1, 1, -11.241, 28.5576, 9.91826, 1.5519, 120, 0, 0),
(@GUID+136, 30752, 622, 1, 1, 8.25547, -21.6199, 34.8875, 1.73515, 120, 0, 0),
(@GUID+137, 30752, 622, 1, 1, 7.30473, 24.2619, 34.9491, 4.43536, 120, 0, 0),
(@GUID+138, 30753, 622, 1, 1, -26.8391, -10.402, 35.5991, 1.29366, 120, 0, 0),
(@GUID+139, 30753, 622, 1, 1, 2.15579, 17.0338, 9.16353, 1.54405, 120, 0, 0),
(@GUID+140, 30753, 622, 1, 1, -7.63407, 0.007234, 86.0904, 6.2728, 120, 0, 0),
(@GUID+141, 30753, 622, 1, 1, 46.382, 7.89944, 10.4129, 3.96271, 120, 0, 0),
(@GUID+142, 30753, 622, 1, 1, 45.981, -6.55312, 10.3636, 2.23091, 120, 0, 0),
(@GUID+143, 30753, 622, 1, 1, 15.254, -0.009458, 86.0904, 3.14299, 120, 0, 0),
(@GUID+144, 30753, 622, 1, 1, -34.939, -11.6484, 11.4697, 5.50858, 120, 0, 0),
(@GUID+145, 30753, 622, 1, 1, -34.785, 11.9312, 11.4869, 0.836243, 120, 0, 0),
(@GUID+146, 30753, 622, 1, 1, -26.9812, 10.5208, 35.5936, 4.74156, 120, 0, 0),
(@GUID+147, 30753, 622, 1, 1, 1.98831, -18.0873, 9.16057, 4.66993, 120, 0, 0),
(@GUID+148, 30754, 622, 1, 1, -19.0109, 27.0177, 89.9667, 6.22411, 120, 0, 0),
(@GUID+149, 30754, 622, 1, 1, -54.639, -15.3254, 34.3972, 3.83128, 120, 0, 0),
(@GUID+150, 30754, 622, 1, 1, -54.7182, 15.5861, 34.3897, 2.50086, 120, 0, 0),
(@GUID+151, 30754, 622, 1, 1, -18.9215, -26.8371, 89.9664, 0.087792, 120, 0, 0),
(@GUID+152, 30755, 622, 1, 1, -3.46042, 28.0231, 34.2784, 4.66548, 120, 0, 0),
(@GUID+153, 30755, 622, 1, 1, 7.21494, -6.31021, 34.4191, 3.11118, 120, 0, 0),
(@GUID+154, 30755, 622, 1, 1, 24.5852, 6.86575, 7.06382, 3.11055, 120, 0, 0),
(@GUID+155, 30755, 622, 1, 1, 8.85995, 18.8224, 8.7027, 4.69035, 120, 0, 0),
(@GUID+156, 30755, 622, 1, 1, 24.3302, -6.97827, 7.08356, 3.34184, 120, 0, 0),
(@GUID+157, 30755, 622, 1, 1, -4.43012, 18.742, 8.62646, 4.66286, 120, 0, 0),
(@GUID+158, 30755, 622, 1, 1, -5.59682, -28.2501, 34.1226, 1.55058, 120, 0, 0),
(@GUID+159, 30755, 622, 1, 1, -4.46811, -18.5567, 8.62604, 1.53698, 120, 0, 0),
(@GUID+160, 30755, 622, 1, 1, 29.8693, -29.5825, 89.7663, 3.05267, 120, 0, 0),
(@GUID+161, 30755, 622, 1, 1, 8.83021, -4.6978, 84.7137, 2.34582, 120, 0, 0),
(@GUID+162, 30755, 622, 1, 1, 37.6428, -9.00797, 30.0954, 0.004917, 120, 0, 0),
(@GUID+163, 30755, 622, 1, 1, -26.188, -6.1712, 9.33333, 3.14217, 120, 0, 0),
(@GUID+164, 30755, 622, 1, 1, 9.06884, -18.7113, 8.70787, 1.56054, 120, 0, 0),
(@GUID+165, 30755, 622, 1, 1, 8.67689, 4.88796, 84.7137, 3.90012, 120, 0, 0),
(@GUID+166, 30755, 622, 1, 1, 7.49121, 6.05275, 34.4239, 3.16615, 120, 0, 0),
(@GUID+167, 30755, 622, 1, 1, 37.6401, 8.9586, 30.0954, 0.012771, 120, 0, 0),
(@GUID+168, 30755, 622, 1, 1, -26.1511, 6.90449, 9.405, 3.12647, 120, 0, 0),
(@GUID+169, 30755, 622, 1, 1, 29.4588, 29.8761, 89.7684, 3.15321, 120, 0, 0),
(@GUID+170, 30824, 622, 1, 1, 55.5028, 0.080449, 30.5268, 3.15669, 120, 0, 0),
(@GUID+171, 30825, 622, 1, 1, 38.4745, 0.038424, 10.1868, 3.15788, 120, 0, 0),
(@GUID+172, 30826, 622, 1, 1, 55.0542, -3.74557, 30.0955, 2.77577, 120, 0, 0),
(@GUID+173, 30827, 622, 1, 1, 45.884, -8.99976, 30.0955, 1.52942, 120, 0, 0),
(@GUID+174, 30866, 622, 1, 1, -36.528, 23.9373, 33.9184, 1.89617, 120, 0, 0),
(@GUID+175, 30866, 622, 1, 1, 15.9225, 26.2539, 35.4586, 1.60085, 120, 0, 0),
(@GUID+176, 30866, 622, 1, 1, -36.1494, -23.2606, 33.9568, 4.2232, 120, 0, 0),
(@GUID+177, 30866, 622, 1, 1, 17.7216, -26.2695, 35.5686, 5.06367, 120, 0, 0),
(@GUID+178, 31243, 622, 1, 1, -11.2408, 33.2155, 10.5949, 1.58668, 120, 0, 0),
(@GUID+179, 31243, 622, 1, 1, 1.99373, 33.0756, 10.0105, 1.53853, 120, 0, 0),
(@GUID+180, 31243, 622, 1, 1, 15.239, 32.5832, 10.5826, 1.52441, 120, 0, 0),
(@GUID+181, 31243, 622, 1, 1, 15.2483, -33.3678, 10.5837, 4.72649, 120, 0, 0),
(@GUID+182, 31243, 622, 1, 1, 1.91814, -32.9286, 10.0097, 4.6891, 120, 0, 0),
(@GUID+183, 31243, 622, 1, 1, -11.0915, -32.8872, 10.5819, 4.68507, 120, 0, 0),
(@GUID+184, 31261, 622, 1, 1, -24.084, -22.2178, 24.3778, 1.43738, 120, 0, 0),
(@GUID+185, 32301, 622, 1, 1, -3.37706, 0.007499, 34.0151, 4.65055, 120, 0, 0),
(@GUID+186, 29799, 623, 1, 1, 34.5332, -38.5618, 25.0323, 3.15234, 120, 0, 0),
(@GUID+187, 30344, 623, 1, 1, 43.6738, 0.121325, 25.1341, 3.10227, 120, 0, 0),
(@GUID+188, 30345, 623, 1, 1, -48.0654, -0.185737, -4.98898, 3.11436, 120, 0, 0),
(@GUID+189, 30346, 623, 1, 1, 25.0778, -0.047958, 9.59893, 3.13291, 120, 0, 0),
(@GUID+190, 30347, 623, 1, 1, 28.6378, -7.55243, 23.2873, 0.157027, 120, 0, 0),
(@GUID+191, 30350, 623, 1, 1, 16.4056, -2.2827, 20.4235, 3.11453, 120, 0, 0),
(@GUID+192, 30351, 623, 1, 1, 2.42088, -23.0053, 22.5625, 0.046087, 120, 0, 0),
(@GUID+193, 30351, 623, 1, 1, 1.29162, -9.37181, 20.458, 3.17295, 120, 0, 0),
(@GUID+194, 30351, 623, 1, 1, 0.773476, 22.5004, 22.5503, 3.2248, 120, 0, 0),
(@GUID+195, 30351, 623, 1, 1, 39.976, 44.3876, 25.0331, 3.16019, 120, 0, 0),
(@GUID+196, 30351, 623, 1, 1, -36.4471, 6.81573, 20.4485, 4.73177, 120, 0, 0),
(@GUID+197, 30351, 623, 1, 1, -36.1811, -6.90251, 20.4501, 1.6483, 120, 0, 0),
(@GUID+198, 30351, 623, 1, 1, 1.44228, 9.63379, 20.4566, 3.15096, 120, 0, 0),
(@GUID+199, 30352, 623, 1, 1, 48.8649, -8.72834, 40.0818, 3.12642, 120, 0, 0),
(@GUID+200, 30352, 623, 1, 1, -17.337, 3.98796, 20.7652, 3.1541, 120, 0, 0),
(@GUID+201, 30352, 623, 1, 1, 16.5684, 2.46962, 20.4252, 3.1329, 120, 0, 0),
(@GUID+202, 30352, 623, 1, 1, 43.7981, 13.0009, -2.07474, 4.61776, 120, 0, 0),
(@GUID+203, 30352, 623, 1, 1, -67.4841, 3.50927, 9.60209, 5.83577, 120, 0, 0),
(@GUID+204, 30352, 623, 1, 1, -17.2379, -3.94242, 20.7667, 3.1541, 120, 0, 0),
(@GUID+205, 30352, 623, 1, 1, -67.1723, -3.73439, 9.60211, 0.318344, 120, 0, 0),
(@GUID+206, 30352, 623, 1, 1, 36.4909, 6.11523, 9.60666, 3.01117, 120, 0, 0),
(@GUID+207, 30352, 623, 1, 1, -49.1048, 0.044213, 20.6694, 0.029782, 120, 0, 0),
(@GUID+208, 30352, 623, 1, 1, 36.436, -6.06257, 9.60687, 3.09364, 120, 0, 0),
(@GUID+209, 30352, 623, 1, 1, 48.8813, 8.78624, 40.0817, 3.1426, 120, 0, 0),
(@GUID+210, 30352, 623, 1, 1, -60.5592, 0.055898, -5.27774, 0.004184, 120, 0, 0),
(@GUID+211, 30380, 623, 1, 1, -6.13984, 21.6533, 9.991, 1.48436, 120, 0, 0),
(@GUID+212, 30380, 623, 1, 1, 3.99105, -21.2539, 9.67311, 4.9577, 120, 0, 0),
(@GUID+213, 30380, 623, 1, 1, -41.0289, 25.7685, 1.20385, 1.49696, 120, 0, 0),
(@GUID+214, 30380, 623, 1, 1, -17.4619, 22.2092, 9.60018, 1.58254, 120, 0, 0),
(@GUID+215, 30380, 623, 1, 1, -8.79147, 30.0334, -0.157799, 0.471494, 120, 0, 0),
(@GUID+216, 30380, 623, 1, 1, -26.5726, 29.6008, -0.15773, 0.856857, 120, 0, 0),
(@GUID+217, 30380, 623, 1, 1, 45.5093, 6.67955, 30.1788, 5.44543, 120, 0, 0),
(@GUID+218, 30380, 623, 1, 1, 1.92073, 28.7498, 0.101361, 0.232732, 120, 0, 0),
(@GUID+219, 30380, 623, 1, 1, -37.3836, 19.9617, 9.59771, 1.87549, 120, 0, 0),
(@GUID+220, 30380, 623, 1, 1, -37.1975, -20.2765, 9.65711, 4.32467, 120, 0, 0),
(@GUID+221, 30380, 623, 1, 1, -7.54172, -30.0747, 0.101348, 4.17752, 120, 0, 0),
(@GUID+222, 30380, 623, 1, 1, -30.1731, -21.9358, 9.59686, 4.72914, 120, 0, 0),
(@GUID+223, 30380, 623, 1, 1, 3.45962, -28.1289, 0.101388, 4.29376, 120, 0, 0),
(@GUID+224, 30380, 623, 1, 1, -18.0212, -22.0926, 9.60068, 4.66788, 120, 0, 0),
(@GUID+225, 30380, 623, 1, 1, -24.7068, -29.9771, 0.101334, 3.66623, 120, 0, 0),
(@GUID+226, 30380, 623, 1, 1, 3.92454, 20.827, 9.67354, 1.30372, 120, 0, 0),
(@GUID+227, 30380, 623, 1, 1, -6.33308, -21.7722, 9.99575, 4.85167, 120, 0, 0),
(@GUID+228, 30380, 623, 1, 1, -39.6946, -26.8419, 0.82802, 2.93659, 120, 0, 0),
(@GUID+229, 30392, 623, 1, 1, 28.7566, 7.6217, 23.2872, 6.08285, 120, 0, 0),
(@GUID+230, 30394, 623, 1, 1, -14.1505, 23.0373, -5.24869, 0.027745, 120, 0, 0),
(@GUID+231, 30394, 623, 1, 1, -11.7295, -24.7904, 9.58663, 1.63703, 120, 0, 0),
(@GUID+232, 30394, 623, 1, 1, -11.9688, 25.5424, 9.58513, 4.66945, 120, 0, 0),
(@GUID+233, 30394, 623, 1, 1, -57.9337, 6.01148, 23.5029, 1.54855, 120, 0, 0),
(@GUID+234, 30394, 623, 1, 1, -14.3898, -23.2398, -5.25039, 6.16013, 120, 0, 0),
(@GUID+235, 30394, 623, 1, 1, -48.1449, -3.10366, -5.21617, 3.11436, 120, 0, 0),
(@GUID+236, 30833, 623, 1, 1, 6.18656, -0.008156, 20.5756, 6.28313, 120, 0, 0),
(@GUID+237, 30867, 623, 1, 1, -11.0475, -22.7053, 22.5096, 4.51265, 120, 0, 0),
(@GUID+238, 30867, 623, 1, 1, -32.9158, -22.1469, 22.5861, 4.59982, 120, 0, 0),
(@GUID+239, 30867, 623, 1, 1, -10.0824, 23.2226, 22.5129, 1.54405, 120, 0, 0),
(@GUID+240, 30867, 623, 1, 1, 36.8757, 45.226, 25.0331, 2.16509, 120, 0, 0),
(@GUID+241, 30867, 623, 1, 1, -33.4747, 22.2096, 22.5895, 1.56211, 120, 0, 0),
(@GUID+242, 30867, 623, 1, 1, 36.9277, -44.9241, 25.0318, 4.11052, 120, 0, 0),
(@GUID+243, 31259, 623, 1, 1, 16.8761, -17.8635, 20.4597, 2.02864, 120, 0, 0),
(@GUID+244, 32193, 623, 1, 1, -21.6978, 0.127903, -18.1897, 3.12341, 120, 0, 0),
(@GUID+245, 32302, 623, 1, 1, 54.6648, -6.9431, 40.0874, 3.0302, 120, 0, 0),
(@GUID+246, 32566, 623, 1, 1, 34.6465, -41.7087, 25.0325, 3.20731, 120, 0, 0),
(@GUID+247, 32777, 623, 1, 1, 42.9517, 4.20903, 25.1088, 3.47298, 120, 0, 0),
(@GUID+248, 34929, 641, 1, 1, -31.0354, 25.1286, 21.6921, 1.60659, 120, 0, 0),
(@GUID+249, 34929, 641, 1, 1, -21.4492, 25.8326, 21.6309, 1.60659, 120, 0, 0),
(@GUID+250, 34929, 641, 1, 1, -12.4734, 26.321, 21.6237, 1.60659, 120, 0, 0),
(@GUID+251, 34929, 641, 1, 1, -2.81125, 26.2077, 21.6566, 1.60659, 120, 0, 0),
(@GUID+252, 34929, 641, 1, 1, -41.7122, 23.1838, 22.5605, 1.60659, 120, 0, 0),
(@GUID+253, 34935, 642, 1, 1, -21.401, -31.343, 34.173, 4.62057, 120, 0, 0),
(@GUID+254, 34935, 642, 1, 1, -12.1064, -31.9697, 34.3807, 4.62057, 120, 0, 0),
(@GUID+255, 34935, 642, 1, 1, -2.4877, -31.9885, 34.8384, 4.62057, 120, 0, 0),
(@GUID+256, 34935, 642, 1, 1, 10.2664, -32.0713, 35.7357, 4.62057, 120, 0, 0),
(@GUID+257, 34935, 642, 1, 1, 19.4636, -30.794, 36.2254, 4.83106, 120, 0, 0),
(@GUID+258, 3084, 647, 1, 1, -5.20674, -11.3432, -17.6101, 4.71239, 120, 0, 0),
(@GUID+259, 3084, 647, 1, 1, -4.83257, -4.31233, -17.6322, 1.62316, 120, 0, 0),
(@GUID+260, 24934, 647, 1, 1, 10.321, -3.57351, -23.4941, 3.1765, 120, 0, 0),
(@GUID+261, 24935, 647, 1, 1, 10.2871, -12.0272, -23.4942, 3.10669, 120, 0, 0),
(@GUID+262, 25075, 647, 1, 1, -3.3964, -7.90545, -23.6967, 6.24828, 120, 0, 0),
(@GUID+263, 34715, 647, 1, 1, -9.18316, -7.77573, -17.217, 3.28122, 120, 0, 0),
(@GUID+264, 34717, 647, 1, 1, -13.6702, -12.4018, -15.9876, 4.59022, 120, 0, 0),
(@GUID+265, 34718, 647, 1, 1, 13.7451, -5.12846, -24.0452, 0.139626, 120, 0, 0),
(@GUID+266, 34719, 647, 1, 1, 7.62309, -5.02532, -17.6702, 4.92183, 120, 0, 0),
(@GUID+267, 34721, 647, 1, 1, -0.919197, -6.16422, -23.6729, 3.57792, 120, 0, 0),
(@GUID+268, 34723, 647, 1, 1, -17.4797, -5.60698, -14.9281, 3.22886, 120, 0, 0),
(@GUID+269, 34730, 647, 1, 1, -2.16687, -7.85422, -23.6919, 3.38594, 120, 0, 0);