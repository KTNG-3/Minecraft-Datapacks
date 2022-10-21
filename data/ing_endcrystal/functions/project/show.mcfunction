#script

execute in minecraft:the_end if entity @e[type=ender_dragon,limit=1] run execute store result bossbar ing_endcrystal:end_crystal value run scoreboard players get EndCrystal ing_EndCrystal.Data
execute run bossbar set ing_endcrystal:end_crystal visible true
execute if score Enable ing_EndCrystal.Settings matches 0 run bossbar set ing_endcrystal:end_crystal visible false

#change name

execute if score Format ing_EndCrystal.Settings matches 1 run function ing_endcrystal:project/format/1
execute if score Format ing_EndCrystal.Settings matches 2 run function ing_endcrystal:project/format/2
execute if score Format ing_EndCrystal.Settings matches 3 run function ing_endcrystal:project/format/3

#showup who

execute in minecraft:the_end at @e[type=ender_dragon,limit=1] run bossbar set ing_endcrystal:end_crystal players @a[distance=..200,scores={ing_EndCrystal.Settings_Enable=1}]