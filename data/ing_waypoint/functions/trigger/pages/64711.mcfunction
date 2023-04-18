scoreboard players set Forceload ing_WP.Settings 0

execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] at @s run function ing_waypoint:project/forceload_kill

execute as @s run function ing_waypoint:trigger/pages/64