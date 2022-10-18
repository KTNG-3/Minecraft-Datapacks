# settings

execute unless score Enable ing_DayCount.Settings matches 0..1 run scoreboard players set Enable ing_DayCount.Settings 1

execute as @a unless score @s ing_DayCount.Settings_Enable matches 0..1 run scoreboard players set @s ing_DayCount.Settings_Enable 1
execute as @a unless score @s ing_DayCount.Settings_Sound matches 0..1 run scoreboard players set @s ing_DayCount.Settings_Sound 1

## function

execute store result score Day_Now ing_DayCount.DayCount run time query day

execute if score Enable ing_DayCount.Settings matches 1 if score Day_Now ing_DayCount.DayCount > Day_Temp ing_DayCount.DayCount as @a if score @s ing_DayCount.Settings_Enable matches 1 run function ing_daycount:project/showup

execute store result score Day_Temp ing_DayCount.DayCount run scoreboard players get Day_Now ing_DayCount.DayCount