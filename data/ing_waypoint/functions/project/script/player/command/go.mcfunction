# script

tag @s add ing_waypoint.LoadPlayer
execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Waypoint run tag @s add ing_waypoint.LoadTarget

execute unless entity @e[tag=ing_waypoint.LoadTarget,limit=1] run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Not Found","color":"red","bold":true}]

execute if entity @e[tag=ing_waypoint.LoadTarget,limit=1] unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 run function ing_waypoint:project/script/player/command/go_check
execute if entity @e[tag=ing_waypoint.LoadTarget,limit=1] if score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 run function ing_waypoint:project/script/all/command/go_check

# done

tag @s remove ing_waypoint.LoadPlayer
tag @e remove ing_waypoint.LoadTarget