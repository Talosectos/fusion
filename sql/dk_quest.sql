/*
-- Debug des quêtes de la zone de départ dk
*/

-- Rajout de deux points de talents manquants pour arriver à 71 points au niveau 80
UPDATE `quest_template` SET `Method`=2, `BonusTalents`=2 WHERE `entry`='12641';

-- Debug de la quete If Chaos Drives, Let Suffering Hold The Reins
INSERT INTO creature_ai_scripts (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(2860904,28609,6,0,100,0,0,0,0,0,33,28529,1,0,0,0,0,0,0,0,0,0,'Kill credit for quest If Chaos Drives, Let Suffering Hold The Reins'),