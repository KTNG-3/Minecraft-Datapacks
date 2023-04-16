# waypoint

execute as @a if score @s ing_WP.DATA_ID matches 1.. run function ing_waypoint:project/waypoint

execute as @e[type=minecraft:armor_stand,tag=ing_waypoint.Waypoint] at @s run function ing_waypoint:project/rename

# loop

schedule function ing_waypoint:project/loop 3s