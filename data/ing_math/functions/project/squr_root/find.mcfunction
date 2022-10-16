scoreboard players operation @s ing_Math.Sqrt_Out += @s ing_Math.Sqrt_Temp
scoreboard players operation @s ing_Math.Sqrt_Out /= 2 ing_Math.Static_Number

scoreboard players operation @s ing_Math.Sqrt_Temp = @s ing_Math.Sqrt_In
scoreboard players operation @s ing_Math.Sqrt_Temp /= @s ing_Math.Sqrt_Out

execute unless score @s ing_Math.Sqrt_Out > @s ing_Math.Sqrt_Temp as @s at @s store result score @s ing_Math.Sqrt_Sqrt run scoreboard players get @s ing_Math.Sqrt_Out
execute if score @s ing_Math.Sqrt_Out > @s ing_Math.Sqrt_Temp as @s at @s run function ing_math:project/squr_root/find