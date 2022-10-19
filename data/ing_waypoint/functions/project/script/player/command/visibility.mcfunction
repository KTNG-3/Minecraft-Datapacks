# setup

tag @s add ing_waypoint.LoadPlayer

# script

execute as @e[type=armor_stand] if score @s ing_WP.DATA_Owner = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_UserData.ID if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Waypoint run tag @s add ing_waypoint.LoadTarget

execute as @s store result score @s ing_WP.DATA_Visibility run scoreboard players get @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility

execute as @s if score @s ing_WP.DATA_Visibility matches 0 run scoreboard players set @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility 1
execute as @s if score @s ing_WP.DATA_Visibility matches 0 run data modify entity @e[tag=ing_waypoint.LoadTarget,limit=1] CustomNameVisible set value 1b

execute as @s if score @s ing_WP.DATA_Visibility matches 1 run scoreboard players set @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility 0
execute as @s if score @s ing_WP.DATA_Visibility matches 1 run data modify entity @e[tag=ing_waypoint.LoadTarget,limit=1] CustomNameVisible set value 0b
execute as @s if score @s ing_WP.DATA_Visibility matches 1 run execute as @a if score @s ing_WP.DATA_ID = @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_ID run function ing_waypoint:project/script/player/command/cancel

execute as @s run scoreboard players reset @s ing_WP.DATA_Visibility

# finish

tag @e remove ing_waypoint.LoadTarget
tag @e remove ing_waypoint.LoadPlayer

execute as @s run scoreboard players set @s ing.Help 624
execute as @s run function ing_waypoint:trigger/tick