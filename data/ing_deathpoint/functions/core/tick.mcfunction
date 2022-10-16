## function

# live time

execute as @a if score @s ing_DeathPoint.time matches 20.. at @s run function ing_deathpoint:project/time/s
execute as @a if score @s ing_DeathPoint.s matches 60.. at @s run function ing_deathpoint:project/time/m
execute as @a if score @s ing_DeathPoint.m matches 60.. at @s run function ing_deathpoint:project/time/h

# check

scoreboard players add @a ing_DeathPoint.if 0

execute as @a if score @s ing_DeathPoint.if matches 1.. at @s run function ing_deathpoint:project/showup
execute as @a if score @s ing_DeathPoint.if matches 1.. at @s run scoreboard players set @s ing_DeathPoint.if 0