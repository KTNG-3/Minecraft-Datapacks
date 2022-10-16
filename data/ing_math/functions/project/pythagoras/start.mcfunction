scoreboard players reset @s ing_Math.PTG_A2
scoreboard players operation @s ing_Math.PTG_A2 = @s ing_Math.PTG_A
scoreboard players operation @s ing_Math.PTG_A2 *= @s ing_Math.PTG_A2

scoreboard players reset @s ing_Math.PTG_B2
scoreboard players operation @s ing_Math.PTG_B2 = @s ing_Math.PTG_B
scoreboard players operation @s ing_Math.PTG_B2 *= @s ing_Math.PTG_B2

scoreboard players reset @s ing_Math.PTG_C2
scoreboard players operation @s ing_Math.PTG_C2 += @s ing_Math.PTG_A2
scoreboard players operation @s ing_Math.PTG_C2 += @s ing_Math.PTG_B2

execute as @s at @s store result score @s ing_Math.Sqrt_In run scoreboard players get @s ing_Math.PTG_C2

execute as @s at @s run function ing_math:project/squr_root/start

execute as @s at @s store result score @s ing_Math.PTG_C run scoreboard players get @s ing_Math.Sqrt_Sqrt