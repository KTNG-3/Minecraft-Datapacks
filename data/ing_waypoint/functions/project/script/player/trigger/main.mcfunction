# setup

scoreboard players set @s ing_WP.Player_Slot 0
scoreboard players set @s ing_WP.Player_Empty 0

tag @s add ing_waypoint.LoadPlayer

# script

execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_Owner = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.UserID run function ing_waypoint:project/script/player/trigger/slot_find
execute store result score @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.Player_Empty run scoreboard players get Max_Player_Waypoint ing_WP.Settings
scoreboard players operation @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.Player_Empty -= @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.Player_Slot

execute as @s if score @s ing_WP.Player_Empty matches 1.. run function ing_waypoint:project/script/player/trigger/slot_empty

# clear

tag @s remove ing_waypoint.LoadPlayer