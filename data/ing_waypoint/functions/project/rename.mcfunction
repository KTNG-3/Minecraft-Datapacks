# setup

tag @e[tag=ing_waypoint.Name_LoadTarget] remove ing_waypoint.Name_LoadTarget
tag @e[tag=ing_waypoint.Name_LoadPaper] remove ing_waypoint.Name_LoadPaper

# script

execute as @e[type=armor_stand] unless score @s ing_WP.DATA_ID matches 0 run tag @s add ing_waypoint.Name_LoadTarget
execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s run tag @e[type=minecraft:item,nbt={Item:{Count:1b},OnGround:1b},distance=..1.5] add ing_waypoint.Name_LoadPaper

execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] if data entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner = @a[distance=..3,sort=nearest,limit=1] ing_UserData.ID run data modify entity @s CustomName set from entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] Item.tag.display.Name
execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] if data entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner matches -1 if entity @a[tag=ing.Admin,distance=..3,sort=nearest,limit=1] run data modify entity @s CustomName set from entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] Item.tag.display.Name

# finish

execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] if data entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner = @a[distance=..3,sort=nearest,limit=1] ing_UserData.ID run playsound minecraft:block.anvil.use master @a[distance=..5] ~ ~ ~ 0.5 1 1
execute as @e[tag=ing_waypoint.Name_LoadTarget] at @s if entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] if data entity @e[tag=ing_waypoint.Name_LoadPaper,sort=nearest,limit=1] Item.tag.display.Name if score @s ing_WP.DATA_Owner matches -1 if entity @a[tag=ing.Admin,distance=..3,sort=nearest,limit=1] run playsound minecraft:block.anvil.use master @a[distance=..5] ~ ~ ~ 0.5 1 1

tag @e[tag=ing_waypoint.Name_LoadTarget] remove ing_waypoint.Name_LoadTarget
tag @e[tag=ing_waypoint.Name_LoadPaper,limit=1] remove ing_waypoint.Name_LoadPaper