scoreboard players set All_Enable ing_WP.Settings 0

execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_Owner matches -1 run data modify entity @s CustomNameVisible set value 0b

execute as @s run function ing_waypoint:trigger/pages/64

execute as @a at @s run function ing_waypoint:project/script/all/command/cancel_player