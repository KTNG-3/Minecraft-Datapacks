execute as @s run scoreboard players set @a ing_DeathPoint.if 0

execute as @s store result score @s ing_DeathPoint.x run scoreboard players get @s ing_Location.Position_x
execute as @s store result score @s ing_DeathPoint.y run scoreboard players get @s ing_Location.Position_y
execute as @s store result score @s ing_DeathPoint.z run scoreboard players get @s ing_Location.Position_z
execute as @s store result score @s ing_DeathPoint.world run scoreboard players get @s ing_Location.Dimension

scoreboard players add @s ing_DeathPoint.h 0
scoreboard players add @s ing_DeathPoint.m 0
scoreboard players add @s ing_DeathPoint.s 0

execute as @s run tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
execute as @s run tellraw @s [{"text" : "Ing Project","color": "dark_green","bold": true},{"text": " Deathpoint","color": "gold"}]
execute as @s run tellraw @s {"text" : " "}
execute as @s run tellraw @s [{"text" : "Name : ","color":"red","bold": true},{"selector":"@s","color": "gold"}]
execute as @s run tellraw @s[scores={ing_DeathPoint.world=1}] [{"text" : "Dimension : ","color":"red","bold": true},{"text": "Overworld","color": "gold"}]
execute as @s run tellraw @s[scores={ing_DeathPoint.world=2}] [{"text" : "Dimension : ","color":"red","bold": true},{"text": "Nether","color": "gold"}]
execute as @s run tellraw @s[scores={ing_DeathPoint.world=3}] [{"text" : "Dimension : ","color":"red","bold": true},{"text": "The End","color": "gold"}]
execute as @s run tellraw @s[scores={ing_DeathPoint.world=4}] [{"text" : "Dimension : ","color":"red","bold": true},{"text": "Unknown","color": "gold"}]
execute as @s run tellraw @s [{"text" : "Location : ","color":"red","bold": true},{"score":{"name":"@s","objective":"ing_DeathPoint.x"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"@s","objective":"ing_DeathPoint.y"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"@s","objective":"ing_DeathPoint.z"},"color":"gold"}]
execute as @s run tellraw @s [{"text" : "Live Time : ","color":"red","bold": true},{"score":{"name":"@s","objective":"ing_DeathPoint.h"},"color":"gold"},{"text":" Hour"},{"text":"(s) ","bold": false},{"score":{"name":"@s","objective":"ing_DeathPoint.m"},"color":"gold"},{"text":" Minute"},{"text":"(s) ","bold": false},{"score":{"name":"@s","objective":"ing_DeathPoint.s"},"color":"gold"},{"text":" Second"},{"text":"(s) ","bold": false}]
execute as @s run tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}

execute as @s run scoreboard players set @s ing_DeathPoint.s 0
execute as @s run scoreboard players set @s ing_DeathPoint.m 0
execute as @s run scoreboard players set @s ing_DeathPoint.h 0
execute as @s run scoreboard players set @s ing_DeathPoint.time 0