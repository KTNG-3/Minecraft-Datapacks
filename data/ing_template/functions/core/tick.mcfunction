# trigger

scoreboard players enable @a ing.Template

execute as @a unless score @s ing.Template matches 0 run scoreboard players enable @s ing.Template
execute as @a at @s unless score @s ing.Template matches 0 run function ing_template:trigger/check

## function