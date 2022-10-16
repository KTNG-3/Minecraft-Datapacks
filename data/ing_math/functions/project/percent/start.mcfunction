# pre

scoreboard players set @s ing_Math.Percent_X10 10

## *10^2 = *100

scoreboard players reset @s ing_Math.Percent_HavenX
execute store result score @s ing_Math.Percent_HavenX run scoreboard players get @s ing_Math.Percent_Haven
scoreboard players operation @s ing_Math.Percent_HavenX *= @s ing_Math.Percent_X10

scoreboard players reset @s ing_Math.Percent_HellX
execute store result score @s ing_Math.Percent_HellX run scoreboard players get @s ing_Math.Percent_Hell
scoreboard players operation @s ing_Math.Percent_HavenX *= @s ing_Math.Percent_X10

# find precent

scoreboard players reset @s ing_Math.Percent_Percent
scoreboard players reset @s ing_Math.Percent_X10

execute store result score @s ing_Math.Percent_X10 run scoreboard players get @s ing_Math.Percent_HavenX
scoreboard players operation @s ing_Math.Percent_X10 /= @s ing_Math.Percent_HellX

execute store result score @s ing_Math.Percent_Percent run scoreboard players get @s ing_Math.Percent_X10

# last

scoreboard players set @s ing_Math.Percent_X10 10