scoreboard players operation @s ing_Math.Sqrt_Out = @s ing_Math.Sqrt_In

scoreboard players set @s ing_Math.Sqrt_Temp 1
scoreboard players set @s ing_Math.Sqrt_Sqrt 0

execute if score @s ing_Math.Sqrt_Out > @s ing_Math.Sqrt_Temp as @s at @s run function ing_math:project/squr_root/find