# setup

tag @s add ing_waypoint.LoadPlayer

# script

execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.DATA_ID run tag @s add ing_waypoint.LoadTarget

execute unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 run function ing_waypoint:project/script/player/command/cancel

# finish

tag @s remove ing_waypoint.LoadPlayer
tag @e[tag=ing_waypoint.LoadTarget,limit=1] remove ing_waypoint.LoadTarget