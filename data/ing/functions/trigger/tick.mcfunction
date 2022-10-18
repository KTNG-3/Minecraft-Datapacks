# pages

execute as @s if score @s ing.Help matches -1 run function ing:trigger/pages/-1
execute as @s if score @s ing.Help matches -10 run function ing:trigger/pages/-10
execute as @s if score @s ing.Help matches -100 run function ing:trigger/pages/-100

execute as @s if score @s ing.Help matches 1 run function ing:trigger/pages/1
execute as @s if score @s ing.Help matches 11 run function ing:trigger/pages/11
execute as @s if score @s ing.Help matches 111 run function ing:trigger/pages/111
execute as @s if score @s ing.Help matches 112 run function ing:trigger/pages/112
execute as @s if score @s ing.Help matches 12 run function ing:trigger/pages/12

# reset

execute as @s run scoreboard players set @s ing.Help 0