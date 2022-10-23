scoreboard players set Forceload ing_WP.Settings 0

execute as @e[type=minecraft:armor_stand,tag=ing_waypoint.Waypoint] at @s if score @s ing_WP.DATA_FindForceload matches 0 run forceload remove ~ ~ ~ ~

execute as @s run function ing_waypoint:trigger/pages/64