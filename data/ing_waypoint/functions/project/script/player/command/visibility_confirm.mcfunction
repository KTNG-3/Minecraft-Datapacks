# script

execute as @s store result score @s ing_WP.DATA_Visibility run scoreboard players get @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility

execute as @s if score @s ing_WP.DATA_Visibility matches 0 run scoreboard players set @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility 1
execute as @s if score @s ing_WP.DATA_Visibility matches 0 run data modify entity @e[tag=ing_waypoint.LoadTarget,limit=1] CustomNameVisible set value 1b

execute as @s if score @s ing_WP.DATA_Visibility matches 1 run scoreboard players set @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Visibility 0
execute as @s if score @s ing_WP.DATA_Visibility matches 1 run data modify entity @e[tag=ing_waypoint.LoadTarget,limit=1] CustomNameVisible set value 0b
execute as @s if score @s ing_WP.DATA_Visibility matches 1 run execute as @a if score @s ing_WP.DATA_ID = @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_ID unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner = @s ing.UserID run function ing_waypoint:project/script/player/command/cancel

execute as @s run scoreboard players reset @s ing_WP.DATA_Visibility

# finish

execute as @s run scoreboard players set @s ing.Help 624
execute as @s run function ing:trigger/tick