execute as @s at @s run function ing:trigger/pages/-10

execute as @s run scoreboard players set @s ing_WP.DATA_ID 0

execute as @s run trigger ing.Help set 0
execute as @s run trigger ing.Waypoint set 0

execute as @s run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Cancel Path Finding","color":"gold","bold":false}]

execute as @s run scoreboard players enable @s ing.Help

execute as @s at @s if score @s ing_WP.Settings_Sound matches 1 run playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 1 1 1