tellraw @s {"text": " "}
tellraw @s [{"text": "[ Day Counter ] ","bold": false,"color": "gray"},{"text": "Current Day: ","color": "gold","bold": false},{"score":{"name":"Day_Now","objective":"ing_DayCount.DayCount"},"color":"red","bold": true}]
tellraw @s [{"text": "[ Made by ING3_ ]","bold": false,"color": "gray"}]
tellraw @s {"text": " "}
execute as @s if score @s ing_DayCount.Settings_Sound matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1