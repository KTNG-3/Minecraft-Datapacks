execute as @s if entity @s if score @s ing.Waypoint.Cancel matches 1 run function ing_waypoint:project/script/player/command/cancel

execute as @s run scoreboard players set @s ing.Waypoint.Cancel 0