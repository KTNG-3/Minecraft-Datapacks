tag @s add ing_waypoint.All_LoadPlayer

# find empty slot

execute as @s run scoreboard players reset @s ing_WP.LoadAll_Slot
execute as @e[type=minecraft:armor_stand,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_Owner matches -1 run scoreboard players add @a[tag=ing_waypoint.All_LoadPlayer,limit=1] ing_WP.LoadAll_Slot 1

execute store result score @s ing_WP.LoadAll_Empty run scoreboard players get Max_All_Waypoint ing_WP.Settings
scoreboard players operation @s ing_WP.LoadAll_Empty -= @s ing_WP.LoadAll_Slot

# create waypoint

execute as @s unless score @s ing_WP.LoadAll_Empty matches 1.. run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Doesn't have enough waypoint slots","color":"red","bold":true}]
execute as @s if score @s ing_WP.LoadAll_Empty matches 1.. unless entity @s[tag=ing.Admin] run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"You don't have permission to do this","color":"red","bold":true}]
execute as @s if score @s ing_WP.LoadAll_Empty matches 1.. if entity @s[tag=ing.Admin] at @s if entity @e[type=minecraft:armor_stand,distance=..2] run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"To spawn Waypoint you must be away from other Armor Stand for at least 2 blocks","color":"red","bold":true}]
execute as @s if score @s ing_WP.LoadAll_Empty matches 1.. if entity @s[tag=ing.Admin] at @s unless entity @e[type=minecraft:armor_stand,distance=..2] run function ing_waypoint:project/script/all/command/spawn

tag @s remove ing_waypoint.All_LoadPlayer