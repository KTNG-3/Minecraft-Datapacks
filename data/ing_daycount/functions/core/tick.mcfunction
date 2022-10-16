## function

execute store result score Day_Now ing_DayCount.DayCount run time query day

execute if score Day_Now ing_DayCount.DayCount > Day_Temp ing_DayCount.DayCount as @a at @s run function ing_daycount:project/showup

execute store result score Day_Temp ing_DayCount.DayCount run scoreboard players get Day_Now ing_DayCount.DayCount