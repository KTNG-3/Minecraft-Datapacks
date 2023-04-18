# setup

tag @s add ing_waypoint.LoadPlayer

# script

execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.DATA_ID run tag @s add ing_waypoint.Target

execute if score @s ing_Location.Dimension = @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension as @a[tag=ing_waypoint.LoadPlayer,limit=1] at @s run function ing_waypoint:project/waypoint_confirm
execute unless score @s ing_Location.Dimension = @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension run function ing_waypoint:project/script/player/command/cancel
execute unless score @s ing_Location.Dimension = @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension if score @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension matches 1 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text": "Waypoint and you are in different dimensions [ ","color": "gold","bold": false},{"text": "Overworld","color": "red","bold": false},{"text": " ]","color": "gold","bold": false}]
execute unless score @s ing_Location.Dimension = @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension if score @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension matches 2 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text": "Waypoint and you are in different dimensions [ ","color": "gold","bold": false},{"text": "The Nether","color": "red","bold": false},{"text": " ]","color": "gold","bold": false}]
execute unless score @s ing_Location.Dimension = @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension if score @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension matches 3 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text": "Waypoint and you are in different dimensions [ ","color": "gold","bold": false},{"text": "The End","color": "red","bold": false},{"text": " ]","color": "gold","bold": false}]
execute unless score @s ing_Location.Dimension = @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension if score @e[tag=ing_waypoint.Target,limit=1] ing_Location.Dimension matches 4 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text": "Waypoint and you are in different dimensions [ ","color": "gold","bold": false},{"text": "Unknown","color": "red","bold": false},{"text": " ]","color": "gold","bold": false}]

# finish

tag @e remove ing_waypoint.Target
tag @s remove ing_waypoint.LoadPlayer