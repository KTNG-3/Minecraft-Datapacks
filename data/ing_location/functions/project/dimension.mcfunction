scoreboard players set @s ing_Location.Dimension 4

execute as @s at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s ing_Location.Dimension 1
execute as @s at @s if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s ing_Location.Dimension 2
execute as @s at @s if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s ing_Location.Dimension 3