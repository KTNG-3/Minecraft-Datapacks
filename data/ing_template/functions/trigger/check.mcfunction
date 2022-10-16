# playsound

execute at @s unless score @s ing.Template matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.25 2 1

# trigger

execute as @s if score @s ing.Template matches -100 run function ing:trigger/-100
execute as @s if score @s ing.Template matches -10 run function ing:trigger/-10
execute as @s if score @s ing.Template matches -1 run function ing:trigger/-1

execute as @s if score @s ing.Template matches 1 run function ing_template:trigger/pages/1
execute as @s if score @s ing.Template matches 2 run function ing_template:trigger/pages/2

# reset

scoreboard players reset @s ing.Template
scoreboard players enable @s ing.Template