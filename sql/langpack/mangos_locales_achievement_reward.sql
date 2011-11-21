SET NAMES utf8;
INSERT IGNORE INTO `locales_achievement_reward` (`entry`) SELECT `entry` FROM `achievement_reward`;

UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Félicitations', `text_loc2` = 'Toutes mes félicitations pour votre application à atteindre votre quatre-vingtième saison d\'aventures. Vous êtes indubitablement $gdévoué:dévouée; à la cause de l\'éradication du mal qui nous touche en Azeroth.\n\nEt bien que le voyage n\'ait pas été une mince affaire jusqu\'à présent, la véritable bataille nous attend encore.\n\nContinuez le combat !\n\nRhonin' WHERE `entry` = 13;
UPDATE `locales_achievement_reward` SET `text_loc2` = 'Eh ben, vous !\n\nEt moi qui croyais avoir tout vu sur ces terres gelées ! Le feu de l\'exploration brûle en vous. Cela saute à mes yeux de nain.\n\nPortez ce tabard avec fierté. De cette façon, vos amis sauront toujours à qui demander leur chemin en temps voulu !\n\nRestez bien en selle !\n\nBrann Barbe-de-bronze' WHERE `entry` = 45;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Pour la Horde !', `text_loc2` = 'En ces temps troublés, nos souffrances engendrent de vrais héros. Vous êtes l\'un d\'eux.\n\nNous sommes en guerre. Vos efforts soutiennent notre cause en Azeroth. Vos hautes actions seront récompensées. Prenez ce prix d\'Orgrimmar et chevauchez vers la gloire.\n\nPour la Horde !\n\nChef de guerre Thrall' WHERE `entry` = 619;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Pour l\'Alliance !' WHERE `entry` = 614;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Pour la Horde !' WHERE `entry` = 619;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Gloire à l\'écumeur de raids de la Couronne de glace' WHERE `entry` = 4603;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Une offrande à l\'immortalité' WHERE `entry` = 4079;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Une offrande à l\'immortalité' WHERE `entry` = 4156;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Niveau 80' WHERE `entry` = 13;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Maître de l\'île des Conquérants' WHERE `entry` = 3857;
UPDATE `locales_achievement_reward` SET `subject_loc2` = 'Maître de l\'île des Conquérants' WHERE `entry` = 3957;
