/*
-- IA des trashs de la fosse + Frigecroc et Tyrannus
*/

/* Nettoyage
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (36886,36879,36830,36788,36891,37713,37712,36840,36893,36892,36841,36842,36874,36658,36661);
UPDATE `creature_template` SET `AIName` = '', WHERE `entry` IN (36886,36879,36830,36788,36891,37713,37712,36840,36893,36892,36841,36842,36874,36661);
UPDATE `creature_template` SET `AIName` = '', `ScriptName`  = 'boss_scourgelord_tyrannus' WHERE `entry` = 36658;
UPDATE `creature_template` SET `AIName` = '', `ScriptName`  = 'boss_rimefang' WHERE `entry` = 36661;
*/

UPDATE `creature_template` SET `AIName` = 'EventAI',
`ScriptName` = '' WHERE `entry` IN (36886,36879,36830,36788,36891,37713,37712,36840,36893,36892,36841,36842,36874,36658,36661);

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
	-- Geist Ambusher
	(3688601, 36886, 0, 0, 100, 3, 3000, 5000, 12000, 17000, 11, 69504, 5, 0, 11, 69503, 1, 0, 0, 0, 0, 0, 'Geist Ambusher - Leaping Face maul'),
	(3688602, 36886, 0, 0, 100, 5, 3000, 5000, 12000, 17000, 11, 70271, 5, 0, 11, 69503, 1, 0, 0, 0, 0, 0, 'Geist Ambusher - Leaping Face maul'),
  -- Plagueborn Horror
    (3687901, 36879, 0, 0, 100, 3, 3000, 5000, 12000, 17000, 11, 69581, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagueborn Horror - Chair pustuleuse'),
    (3687902, 36879, 0, 0, 100, 5, 3000, 5000, 12000, 17000, 11, 70273, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagueborn Horror - Chair pustuleuse'),
    (3687903, 36879, 0, 0, 100, 5, 6000, 7000, 15000, 20000, 11, 69024, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagueborn Horror - Déchets toxiques'),
    (3687904, 36879, 2, 0, 100, 4, 10, 0, 0, 0, 11, 69582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagueborn Horror - Bombe chancreuse à 10% HP'),
    -- Wrathbone laborer
    (3683001, 36830, 0, 0, 100, 3, 5000, 5000, 10000, 20000, 11, 70278, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrathbone laborer - Blessure transperçante'),
    (3683002, 36830, 0, 0, 80, 3, 3000, 8000, 11000, 15000, 11, 69572, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrathbone laborer - Coup de pelle'),
    (3683003, 36830, 0, 0, 100, 3, 3000, 8000, 11000, 15000, 11, 70302, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrathbone laborer - Poussière aveuglante'),
    (3683004, 36830, 0, 0, 100, 5, 5000, 5000, 10000, 20000, 11, 70279, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrathbone laborer - Blessure transperçante'),
    (3683005, 36830, 0, 0, 80, 5, 3000, 8000, 11000, 15000, 11, 70280, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrathbone laborer - Coup de pelle'),
    (3683006, 36830, 0, 0, 100, 5, 3000, 8000, 11000, 15000, 11, 70302, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrathbone laborer - Poussière aveuglante'),
    -- DeathWhisper Necrolyte
    (3678801, 36788, 0, 0, 100, 5, 3000, 8000, 8000, 15000, 11, 70270, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DeathWhisper Necrolyte - Trait de l''ombre'),
    (3678802, 36788, 0, 0, 100, 5, 10000, 20000, 25000, 35000, 11, 70269, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DeathWhisper Necrolyte - Rayon de conversion'),
    (3678803, 36788, 0, 0, 100, 3, 3000, 8000, 8000, 15000, 11, 69577, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DeathWhisper Necrolyte - Trait de l''ombre'),
    (3678804, 36788, 0, 0, 100, 3, 10000, 20000, 25000, 35000, 11, 69578, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DeathWhisper Necrolyte - Rayon de conversion'),
    -- Iceborn Proto-Drake
    (3689101, 36891, 0, 0, 100, 3, 5000, 8000, 18000, 25000, 11, 69527, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iceborn Proto-Drake - Souffle de givre'),
    (3689102, 36891, 0, 0, 100, 5, 5000, 8000, 18000, 25000, 11, 70272, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iceborn Proto-Drake - Souffle de givre'),
    -- Deathwhisper Torturer
    (3771301, 37713, 0, 0, 100, 5, 5000, 5000, 13000, 19000, 11, 70392, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathwhisper Torturer - Fletrissure noire'),
    (3771302, 37713, 0, 0, 80, 5, 3000, 8000, 11000, 15000, 11, 70391, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathwhisper Torturer - Malediction d agonie'),
    -- Deathwhisper Shadowcaster
    (3771201, 37712, 0, 0, 80, 3, 5000, 5000, 25000, 32000, 11, 70388, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathwhisper Shadowcaster - Graine de Corruption'),
    (3771202, 37712, 0, 0, 100, 3, 3000, 8000, 11000, 15000, 11, 70386, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathwhisper Shadowcaster - Trait de l''ombre'),
    (3771203, 37712, 0, 0, 80, 5, 5000, 5000, 25000, 32000, 11, 70388, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathwhisper Shadowcaster - Graine de Corruption'),
    (3771204, 37712, 0, 0, 100, 5, 3000, 8000, 11000, 15000, 11, 70387, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathwhisper Shadowcaster - Trait de l''ombre'),
    -- Porte-courroux ymirjar
    (3684001, 36840, 0, 0, 100, 3, 5000, 8000, 15000, 25000, 11, 69603, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porte-courroux ymirjar - Chancre'),
    (3684002, 36840, 0, 0, 100, 5, 5000, 8000, 15000, 25000, 11, 70285, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porte-courroux ymirjar - Chancre'),
    -- Porteflammes ymirjar
    (3689301, 36893, 0, 0, 100, 3, 3000, 8000, 15000, 25000, 11, 69586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porteflammes ymirjar - Flammes infernales'),
    (3689302, 36893, 0, 0, 100, 3, 10000, 15000, 15000, 25000, 11, 69584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porteflammes ymirjar - Transfert'),
    (3689303, 36893, 0, 0, 100, 5, 3000, 8000, 15000, 25000, 11, 70283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porteflammes ymirjar - Flammes infernales'),
    (3689304, 36893, 0, 0, 100, 5, 10000, 15000, 15000, 25000, 11, 69584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porteflammes ymirjar - Transfert'),
    (3689305, 36893, 0, 0, 100, 3, 10000, 15000, 8000, 15000, 11, 69583, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porteflammes ymirjar - Boule de feu'),
    (3689306, 36893, 0, 0, 100, 5, 10000, 15000, 8000, 15000, 11, 70282, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porteflammes ymirjar - Boule de feu'),
    -- Porte-mort ymirjar
    (3689201, 36892, 0, 0, 100, 3, 3000, 8000, 9000, 15000, 11, 69528, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porte-mort ymirjar - Trait de l''ombre surpuissant'),
    (3689202, 36892, 0, 0, 100, 5, 3000, 8000, 9000, 15000, 11, 70281, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Porte-mort ymirjar - Trait de l''ombre surpuissant'),
    -- Guerrier Déchu
    (3684101, 36841, 0, 0, 100, 3, 5000, 8000, 15000, 45000, 11, 69579, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guerrier déchu - Arc de cercle tranchant'),
    (3684102, 36841, 0, 0, 100, 3, 3000, 8000, 15000, 25000, 11, 61044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guerrier déchu - Cri démoralisant'),
    (3684103, 36841, 0, 0, 100, 3, 5000, 8000, 15000, 20000, 11, 69580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guerrier déchu - Maîtrise du blocage'),
    (3684104, 36841, 0, 0, 100, 5, 5000, 8000, 15000, 45000, 11, 69579, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guerrier déchu - Arc de cercle tranchant'),
    (3684105, 36841, 0, 0, 100, 5, 3000, 8000, 15000, 25000, 11, 61044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guerrier déchu - Cri démoralisant'),
    (3684106, 36841, 0, 0, 100, 5, 5000, 8000, 15000, 20000, 11, 69580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Guerrier déchu - Maîtrise du blocage'),
    -- Amefroide Irossement
    (3684201, 36842, 0, 0, 100, 3, 5000, 10000, 12500, 20000, 11, 69574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amefroide Irossement - Cercle givrant'),
    (3684202, 36842, 0, 0, 100, 3, 3000, 8000, 7000, 15000, 11, 69573, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amefroide Irossement - Eclair de givre'),
    (3684203, 36842, 0, 0, 100, 5, 5000, 10000, 12500, 20000, 11, 70276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amefroide Irossement - Cercle givrant'),
    (3684204, 36842, 0, 0, 100, 5, 3000, 8000, 7000, 15000, 11, 70277, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amefroide Irossement - Eclair de givre'),
    -- Revenant glaciaire perturbé
    (3687401, 36874, 0, 0, 100, 5, 3000, 8000, 5000, 12000, 11, 55216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Revenant glaciaire perturbé - Avalanche'),
    -- Frigecroc
    (3666101, 36661, 4, 0, 100, 6, 0, 0, 0, 0, 21, 0, 0, 0, 12, 36658, 1, 0, 0, 0, 0, 0, 'Frigecroc - Immobilité'),
    (3666102, 36661, 0, 0, 100, 3, 25000, 25000, 20000, 20000, 11, 69245, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Gelée blanche'),
    (3666103, 36661, 0, 0, 100, 5, 25000, 25000, 20000, 20000, 11, 69645, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Gelée blanche'),
    (3666104, 36661, 0, 0, 100, 7, 30000, 30000, 30000, 30000, 13, 100, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Set Aggro'),
    (3666105, 36661, 0, 0, 100, 7, 30500, 30500, 30000, 30000, 11, 69275, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Marque de Frigecroc'),
    (3666106, 36661, 0, 0, 100, 3, 31000, 31000, 30000, 30000, 11, 51103, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Ralentissement'),
    (3666107, 36661, 0, 0, 100, 5, 31000, 31000, 30000, 30000, 11, 51103, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Ralentissement'),
    (3666108, 36661, 0, 0, 100, 3, 31500, 31500, 30000, 30000, 11, 72120, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Frostbite'),
    (3666109, 36661, 0, 0, 100, 5, 31500, 31500, 30000, 30000, 11, 72121, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Frostbite'),    
    (3666110, 36661, 0, 0, 100, 3, 32000, 32000, 30000, 30000, 11, 69232, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Déflagration glaciale'),
    (3666111, 36661, 0, 0, 100, 5, 32000, 32000, 30000, 30000, 11, 69232, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Déflagration glaciale'),
    (3666112, 36661, 25, 0, 100, 6, 36658, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigecroc - Die with Tyrannus'),

    -- Tyrannus
    (3665801, 36658, 0, 0, 100, 3, 10000, 10000, 50000, 50000, 11, 69155, 1, 1, 1, -1141, 0, 0, 4, 16762, 0, 0, 'Tyrannus - Choc énergique'),
    (3665802, 36658, 0, 0, 100, 5, 10000, 10000, 50000, 50000, 11, 69627, 1, 1, 1, -1141, 0, 0, 4, 16762, 0, 0, 'Tyrannus - Choc énergique'),
    (3665803, 36658, 0, 0, 100, 3, 35000, 35000, 45000, 45000, 11, 69172, 4, 0, 1, -1142, 0, 0, 4, 16761, 0, 0, 'Tyrannus - Marque du suzerain'),
    (3665804, 36658, 0, 0, 100, 7, 30000, 30000, 30000, 30000, 1, -1140, 0, 0, 4, 16764, 0, 0, 0, 0, 0, 0, 'Tyrannus - Marque de Frigecroc'),
    (3665805, 36658, 0, 0, 100, 5, 35000, 35000, 45000, 45000, 11, 69172, 4, 0, 1, -1142, 0, 0, 4, 16761, 0, 0, 'Tyrannus - Marque du suzerain'),
    (3665807, 36658, 0, 0, 100, 3, 40000, 40000, 60000, 60000, 11, 69167, 0, 0, 1, -1139, 0, 0, 4, 16765, 0, 0, 'Tyrannus - Puissance Impie'),
    (3665808, 36658, 0, 0, 100, 5, 40000, 40000, 60000, 60000, 11, 69629, 0, 0, 1, -1139, 0, 0, 4, 16765, 0, 0, 'Tyrannus - Puissance Impie'),
    (3665809, 36658, 6, 0, 100, 4, 0, 0, 0, 0, 1, -1138, 0, 0, 4, 16763, 0, 0, 0, 0, 0, 0, 'Tyrannus - SAY DEATH');
    INSERT INTO `creature_ai_texts` (`entry` ,`content_default` ,`content_loc1` ,`content_loc2` ,`content_loc3` ,`content_loc4` ,`content_loc5` ,`content_loc6` ,`content_loc7` ,`content_loc8` ,`sound` ,`type` ,`language` ,`emote` ,`comment`) VALUES
    (-1137, 'I shall not fail The Lich King! Come and meet your end!', NULL, 'Je ne décevrais pas la Roi Liche! Venez trouver votre fin!', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Tyrannus Aggro'),
    (-1139, 'Power... overwhelming!', NULL, 'Trop de puissance...', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Tyrannus Puissance Impie'),
    (-1140, 'Rimefang, destroy this fool!', NULL, 'Frigecroc, anéantis cet imbécile !', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Tyrannus Marque de Frigecroc'),
    (-1141, 'Perhaps you should have stayed... in the mountains!', NULL, 'Vous auriez peut-être du rester... dans les montagnes!', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Tyrannus Choc énergique'),
    (-1142, 'Such a shameful display. You are better off dead.', NULL, 'Quelle prestation embarassante, la mort vous va bien mieux', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Tyrannus Marque du suzerain'),
    (-1138, 'Impossible.... Rimefang.... warn....', NULL , 'Impossible...Frigecroc... Avertis...', NULL , NULL , NULL , NULL , NULL , NULL , 0, 1, 0, 0, 'Tyrannus Death');
    
-- Implantation de trashs manquants et de tyrannus
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(NULL,36840,658,3,1,0,0,885.022,54.1851,529.027,4.17437,14400,0,0,81900,0,0,0),
(NULL,36840,658,3,1,0,0,904.671,72.2233,546.104,3.56886,14400,0,0,81900,0,0,0),
(NULL,36840,658,3,1,0,0,907.106,65.7202,545.749,3.70392,14400,0,0,81900,0,0,0),
(NULL,36840,658,3,1,0,0,945.32,63.5954,566.549,1.99881,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,997.253,-139.257,615.875,2.72271,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,1073.6,-31.0122,633.409,4.60767,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,1062.15,-29.8507,633.879,4.43314,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,1000.4,-127.873,616.247,3.40339,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,934.218,-18.9006,586.124,1.42811,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,929.5,-14.2036,584.171,1.38991,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,924.292,-17.4159,584.564,1.4556,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,942.749,-63.0069,592.402,2.03735,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,937.791,-67.4134,592.021,2.42169,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,923.748,-74.3913,592.257,1.70543,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,914.899,-74.3616,592.76,1.41139,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,1069.91,100.042,631.062,4.86947,14400,0,0,81900,0,0,0),
(NULL,36841,658,3,1,0,0,1059.17,95.9063,630.781,4.93928,14400,0,0,81900,0,0,0),
(NULL,36842,658,3,1,0,0,926.747,-37.2615,589.926,1.53468,14400,5,0,81900,11982,0,1),
(NULL,36842,658,3,1,0,0,932.63,-38.7537,591.164,1.52682,14400,5,0,81900,11982,0,1),
(NULL,36842,658,3,1,0,0,918.849,-70.6668,592.341,1.486,14400,5,0,81900,11982,0,1),
(NULL,36842,658,3,1,0,0,942.241,-57.102,592.286,2.15945,14400,5,0,81900,11982,0,2),
(NULL,36874,658,2,1,0,0,1005.34,-135.024,619.251,2.60044,10000,0,0,252000,3994,0,0),
(NULL,36874,658,2,1,0,0,1076.48,3.00264,634.545,4.30789,10000,0,0,252000,3994,0,0),
(NULL,36874,658,2,1,0,0,1053.89,-93.0556,632.858,4.2237,14400,0,0,252000,3994,0,0),
(NULL,36892,658,3,1,0,2020,952.791,61.9026,566.477,1.86629,14400,0,0,126000,79880,0,2),
(NULL,36892,658,3,1,0,0,903.234,67.8021,544.033,3.66624,14400,0,0,126000,79880,0,0),
(NULL,36893,658,3,1,0,0,884.857,60.4372,531.234,3.3937,14400,0,0,132300,31952,0,0),
(NULL,36893,658,3,1,0,0,947.287,72.0711,565.971,2.35179,14400,0,0,132300,31952,0,2),
(NULL,36893,658,3,1,0,0,956.041,71.4204,566.105,2.55194,14400,0,0,132300,31952,0,0),
(NULL,36893,658,3,1,0,0,890.439,54.189,531.825,4.32773,14400,0,0,132300,31952,0,0),
(NULL,36658,658,1,65535,0,2013,1002.55,156.292,628.156,5.46638,86400,0,0,653828,0,0,0);