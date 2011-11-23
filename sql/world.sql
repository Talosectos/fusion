/*
-- Fix misc sql
*/

UPDATE `creature_template` SET `AIName`='' WHERE `entry`='20159';

-- Disable Training Dummy Move

UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='31146';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='32667';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='32666';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='31144';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='33243';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='33272';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='33229';