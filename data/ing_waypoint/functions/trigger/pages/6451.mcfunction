execute if score Max_Player_Waypoint ing_WP.Settings matches 2.. run scoreboard players remove Max_Player_Waypoint ing_WP.Settings 1

execute as @s run function ing_waypoint:trigger/pages/64

execute if score Max_Player_Waypoint ing_WP.Settings matches ..1 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"The Waypoint slot must have at least 1 slot","color":"red","bold":true}]
execute unless score Max_Player_Waypoint ing_WP.Settings matches ..1 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Excess Waypoint will be not killed","color":"red","bold":true}]