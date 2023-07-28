# tag

execute as @s run tag @s add ing_waypoint.Name_LoadTarget

execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s run tag @e[type=minecraft:item,nbt={Item:{Count:1b}},distance=..1.475,sort=nearest,limit=1] add ing_waypoint.Name_LoadPaper
execute as @e[tag=ing_waypoint.Name_LoadPaper] on origin run tag @s add ing_waypoint.Name_LoadThrower

# script

execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if data entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner = @a[tag=ing_waypoint.Name_LoadThrower,limit=1] ing_UserData.ID run data modify entity @s CustomName set from entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item.tag.display.Name
execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if data entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner = @a[tag=ing_waypoint.Name_LoadThrower,limit=1] ing_UserData.ID run playsound minecraft:block.anvil.use master @a[distance=..5,scores={ing_WP.Settings_Sound=1}] ~ ~ ~ 0.45 1

execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if data entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner matches -1 if entity @a[tag=ing.Admin,tag=ing_waypoint.Name_LoadThrower,limit=1] run data modify entity @s CustomName set from entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item.tag.display.Name
execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if data entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner matches -1 if entity @a[tag=ing.Admin,tag=ing_waypoint.Name_LoadThrower,limit=1] run data modify entity @s item set from entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item
execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if data entity @e[tag=ing_waypoint.Name_LoadPaper,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner matches -1 if entity @a[tag=ing.Admin,tag=ing_waypoint.Name_LoadThrower,limit=1] run playsound minecraft:block.anvil.use master @a[distance=..5,scores={ing_WP.Settings_Sound=1}] ~ ~ ~ 0.45 1

# finish

tag @e[tag=ing_waypoint.Name_LoadTarget] remove ing_waypoint.Name_LoadTarget
tag @e[tag=ing_waypoint.Name_LoadPaper] remove ing_waypoint.Name_LoadPaper
tag @e[tag=ing_waypoint.Name_LoadThrower] remove ing_waypoint.Name_LoadThrower