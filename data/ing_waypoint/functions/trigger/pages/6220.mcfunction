tag @s add ing_waypoint.LoadPlayer

# find empty slot

execute as @s run scoreboard players reset @s ing_WP.LoadPlayer_Slot
execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_Owner = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_UserData.ID run scoreboard players add @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.LoadPlayer_Slot 1

execute store result score @s ing_WP.LoadPlayer_Empty run scoreboard players get Max_Player_Waypoint ing_WP.Settings
scoreboard players operation @s ing_WP.LoadPlayer_Empty -= @s ing_WP.LoadPlayer_Slot

# create waypoint

execute as @s unless score @s ing_WP.LoadPlayer_Empty matches 1.. run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"You don't have enough waypoint slot","color":"red","bold":true}]
execute as @s if score @s ing_WP.LoadPlayer_Empty matches 1.. at @s if entity @e[type=#ing_waypoint:waypoint,distance=..3] run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"To spawn Waypoint you must be away from other Waypoint Entity for at least 3 blocks","color":"red","bold":true}]
execute as @s if score @s ing_WP.LoadPlayer_Empty matches 1.. at @s unless entity @e[type=#ing_waypoint:waypoint,distance=..3] run function ing_waypoint:project/script/player/command/spawn

tag @s remove ing_waypoint.LoadPlayer