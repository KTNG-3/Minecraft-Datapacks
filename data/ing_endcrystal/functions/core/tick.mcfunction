# settings

execute unless score Enable ing_EndCrystal.Settings matches 0..1 run scoreboard players set Enable ing_EndCrystal.Settings 1
execute unless score Format ing_EndCrystal.Settings matches 1..3 run scoreboard players set Format ing_EndCrystal.Settings 1
execute unless score Max ing_EndCrystal.Settings matches 1.. run scoreboard players set Max ing_EndCrystal.Settings 10

execute as @a unless score @s ing_EndCrystal.Settings_Enable matches 0..1 run scoreboard players set @s ing_EndCrystal.Settings_Enable 1

## function

# check end crystal

scoreboard players reset DragonsNum ing_EndCrystal.Data
execute in minecraft:the_end as @e[type=ender_dragon] at @s run scoreboard players add DragonsNum ing_EndCrystal.Data 1

# if

execute if score DragonsNum ing_EndCrystal.Data matches 1.. run function ing_endcrystal:project/zdragon

# else

execute unless score DragonsNum ing_EndCrystal.Data matches 1.. run bossbar set ing_endcrystal:end_crystal visible false