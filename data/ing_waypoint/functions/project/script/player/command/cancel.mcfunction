execute as @s run scoreboard players set @s ing_WP.DATA_ID 0

execute as @s run trigger ing.Help set 0
execute as @s run trigger ing.Waypoint set 0
execute as @s run trigger ing.Waypoint.Cancel set 0

execute as @s run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Navigation canceled","color":"gold","bold":false}]

execute as @s run scoreboard players enable @s ing.Help

execute as @s at @s if score @s ing_WP.Settings_Sound matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 0.1