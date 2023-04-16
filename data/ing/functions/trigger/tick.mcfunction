# playsound

execute as @s at @s unless score @s ing.Help matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.25 2 1

# pages

execute as @s if score @s ing.Help matches -1 run function ing:trigger/pages/-1
execute as @s if score @s ing.Help matches -10 run function ing:trigger/pages/-10
execute as @s if score @s ing.Help matches -100 run function ing:trigger/pages/-100

execute as @s if score @s ing.Help matches 1 run function ing:trigger/pages/1
execute as @s if score @s ing.Help matches 11 run function ing:trigger/pages/11

# project

execute as @s at @s if score ing_Advancement ing_Core.isActive matches 1 run function ing_advancement:trigger/tick
execute as @s at @s if score ing_Waypoint ing_Core.isActive matches 1 run function ing_waypoint:trigger/tick

# last

execute as @s unless score @s ing.Help matches 0 run function ing:trigger/last

execute as @s unless score @s ing_Core.Trigger_Last matches 0 run scoreboard players add @s ing_Core.Trigger_LastTime 1

execute as @s if score @s ing_Core.Trigger_LastTime matches 300.. run scoreboard players set @s ing_Core.Trigger_Last 0
execute as @s if score @s ing_Core.Trigger_LastTime matches 300.. run scoreboard players set @s ing_Core.Trigger_LastTime 0

# reset

execute as @s run scoreboard players set @s ing.Help 0