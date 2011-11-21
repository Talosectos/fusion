/*
-- Debug des quêtes de la zone de départ dk
*/

-- Debug de la quete Death Comes From On High: Completion automatique (l'oeil de marche pas)
-- Rajout de deux points de talents manquants pour arriver à 71 points au niveau 80
UPDATE `quest_template` SET `Method`=0, `BonusTalents`=2 WHERE `entry`='12641';