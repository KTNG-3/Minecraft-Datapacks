# settings

execute unless score Enable ing_TNT.Settings matches 0..1 run scoreboard players set Enable ing_TNT.Settings 1

execute as @a unless score @s ing_TNT.Settings_Enable matches 0..1 run scoreboard players set @s ing_TNT.Settings_Enable 0

## function

execute if score Enable ing_TNT.Settings matches 1 as @e[type=minecraft:tnt] at @s if entity @a[distance=..14.5,scores={ing_TNT.Settings_Enable=1}] run function ing_tnt:project/showup