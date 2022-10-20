scoreboard players set Player_Enable ing_WP.Settings 1

execute as @e[type=armor_stand] unless score @s ing_WP.DATA_Owner matches -1 if score @s ing_WP.DATA_Visibility matches 1 run data modify entity @s CustomNameVisible set value 1b

execute as @s run function ing_waypoint:trigger/pages/64