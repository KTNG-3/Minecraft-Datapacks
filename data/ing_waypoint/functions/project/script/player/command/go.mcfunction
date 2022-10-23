# setup

execute as @s at @s run function ing:trigger/pages/-10

# script

tag @s add ing_waypoint.LoadPlayer
execute as @e[type=minecraft:armor_stand,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Waypoint run tag @s add ing_waypoint.LoadTarget
tag @s remove ing_waypoint.LoadPlayer

execute unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner = @s ing_UserData.ID unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility matches 1 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"You don't have permission to do this","color":"red","bold":true}]
execute unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner = @s ing_UserData.ID if score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility matches 1 run function ing_waypoint:project/script/player/command/go_confirm
execute if score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 run function ing_waypoint:project/script/player/command/go_confirm
execute if score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner = @s ing_UserData.ID run function ing_waypoint:project/script/player/command/go_confirm

# done

tag @e remove ing_waypoint.LoadTarget