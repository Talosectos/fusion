/*
-- Add Twilight portals for the three drakes
*/
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES (511001,193988,615,3,1,3113.62,520.437,89.3,5.98095,0,0,0.150544,-0.988603,-30,255,1);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES (511002,193988,615,3,1,3209.89,654.592,87.819,1.71544,0,0,0.756354,0.654162,-30,255,1);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES (511003,193988,615,3,1,3354.28,531.727,97.3906,5.76339,0,0,0.256984,-0.966416,-30,255,1);

-- Fix Vesperon life
UPDATE `creature` SET `curhealth`=976150 WHERE `guid`='79371';