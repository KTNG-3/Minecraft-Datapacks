## function

# check end crystal

scoreboard players reset DragonsNum ing_EndCrystal.Settings
execute in minecraft:the_end as @e[type=ender_dragon] at @s run scoreboard players add DragonsNum ing_EndCrystal.Settings 1

# if

execute if score DragonsNum ing_EndCrystal.Settings matches 1.. run function ing_endcrystal:project/zdragon

# else

execute unless score DragonsNum ing_EndCrystal.Settings matches 1.. run bossbar set ing_endcrystal:end_crystal visible false