scoreboard players set Player_Enable ing_WP.Settings 0

execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] unless score @s ing_WP.DATA_Owner matches -1 run data modify entity @s CustomNameVisible set value 0b

execute as @s run function ing_waypoint:trigger/pages/64

execute as @a at @s run function ing_waypoint:project/script/player/command/cancel_player