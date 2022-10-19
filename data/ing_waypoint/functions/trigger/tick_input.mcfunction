# trigger input

execute as @s if score @s ing_Core.Trigger_Old matches 621 run function ing_waypoint:project/script/player/command/go
execute as @s if score @s ing_Core.Trigger_Old matches 623 run function ing_waypoint:project/script/player/command/delete
execute as @s if score @s ing_Core.Trigger_Old matches 624 run function ing_waypoint:project/script/player/command/visibility

execute as @s if score @s ing_Core.Trigger_Old matches 631 run function ing_waypoint:project/script/player/command/go
execute as @s if score @s ing_Core.Trigger_Old matches 633 unless entity @s[tag=ing.Admin] run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"You don't have permission to do this","color":"red","bold":true}]
execute as @s if score @s ing_Core.Trigger_Old matches 633 if entity @s[tag=ing.Admin] run function ing_waypoint:project/script/all/command/delete

# reset

scoreboard players set @s ing_Core.Trigger_Old 0
scoreboard players set @s ing_Core.Trigger_OldTime 0

scoreboard players set @s ing.Help 0

scoreboard players set @s ing.Waypoint 0