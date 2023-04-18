# trigger input

execute as @s if score @s ing_Core.Trigger_Last matches 621 run function ing_waypoint:project/script/player/command/go
execute as @s if score @s ing_Core.Trigger_Last matches 623 run function ing_waypoint:project/script/player/command/delete
execute as @s if score @s ing_Core.Trigger_Last matches 624 run function ing_waypoint:project/script/player/command/visibility

execute as @s if score @s ing_Core.Trigger_Last matches 631 run function ing_waypoint:project/script/player/command/go
execute as @s if score @s ing_Core.Trigger_Last matches 633 run function ing_waypoint:project/script/player/command/delete

# reset

scoreboard players set @s ing_Core.Trigger_LastTime 1

scoreboard players set @s ing.Help 0

scoreboard players set @s ing.Waypoint 0