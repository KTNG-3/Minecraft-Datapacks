# setup

tag @s add ing_waypoint.All_LoadPlayer

# script

execute as @e[type=armor_stand] if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.All_LoadPlayer,limit=1] ing_WP.DATA_ID run tag @s add ing_waypoint.All_LoadTarget

execute if score @e[tag=ing_waypoint.All_LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 run function ing_waypoint:project/script/player/command/cancel

# finish

tag @s remove ing_waypoint.All_LoadPlayer
tag @e[tag=ing_waypoint.All_LoadTarget,limit=1] remove ing_waypoint.All_LoadTarget