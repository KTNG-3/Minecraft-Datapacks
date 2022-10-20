# setup

tag @s add ing_waypoint.LoadPlayer

execute as @s at @s run function ing:trigger/pages/-1

# script

execute as @e[type=armor_stand] if score @s ing_WP.DATA_Owner = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_UserData.ID if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Waypoint run tag @s add ing_waypoint.LoadTarget

execute as @a if score @s ing_WP.DATA_ID = @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_ID run function ing_waypoint:project/script/player/command/cancel

kill @e[tag=ing_waypoint.LoadTarget,limit=1]

# finish

execute as @s at @s if score @s ing_WP.Settings_Sound matches 1 run playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 1 1 1

tag @s remove ing_waypoint.LoadPlayer
tag @e remove ing_waypoint.LoadTarget

execute as @s run scoreboard players set @s ing.Help 623
execute as @s run function ing_waypoint:trigger/tick