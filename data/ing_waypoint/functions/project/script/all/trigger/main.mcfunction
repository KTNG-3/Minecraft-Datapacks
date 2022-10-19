# setup

scoreboard players set @s ing_WP.LoadAll_Slot 0
scoreboard players set @s ing_WP.LoadAll_Empty 0

tag @s add ing_waypoint.All_LoadPlayer

# script

execute as @e[type=armor_stand] if score @s ing_WP.DATA_Owner matches -1 run function ing_waypoint:project/script/all/trigger/slot_find
execute store result score @a[tag=ing_waypoint.All_LoadPlayer,limit=1] ing_WP.LoadAll_Empty run scoreboard players get Max_All_Waypoint ing_WP.Settings
scoreboard players operation @a[tag=ing_waypoint.All_LoadPlayer,limit=1] ing_WP.LoadAll_Empty -= @a[tag=ing_waypoint.All_LoadPlayer,limit=1] ing_WP.LoadAll_Slot

execute as @s if score @s ing_WP.LoadAll_Empty matches 1.. run function ing_waypoint:project/script/all/trigger/slot_empty

# clear

tag @s remove ing_waypoint.All_LoadPlayer