#check end crystal

scoreboard players reset EndCrystal ing_EndCrystal.Data
execute in the_end at @e[type=ender_dragon] as @e[type=end_crystal,distance=..250] run scoreboard players add EndCrystal ing_EndCrystal.Data 1

#check if have

execute if score EndCrystal ing_EndCrystal.Data matches 1.. in minecraft:the_end run function ing_endcrystal:project/show

#else

execute unless score EndCrystal ing_EndCrystal.Data matches 1.. run bossbar set ing_endcrystal:end_crystal visible false
execute in minecraft:the_end as @e[type=ender_dragon,limit=1] unless entity @s run bossbar set ing_endcrystal:end_crystal visible false