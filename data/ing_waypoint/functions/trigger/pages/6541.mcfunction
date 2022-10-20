execute if score @s ing_WP.Settings_AutoCancel matches 2.. run scoreboard players remove @s ing_WP.Settings_AutoCancel 1

execute as @s run function ing_waypoint:trigger/pages/65

execute if score @s ing_WP.Settings_AutoCancel matches ..1 run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Auto-cancel Waypoint must be at least 1 block","color":"red","bold":true}]