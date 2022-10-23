# settings

execute unless score Player_Enable ing_WP.Settings matches 0..1 run scoreboard players set Player_Enable ing_WP.Settings 1
execute unless score All_Enable ing_WP.Settings matches 0..1 run scoreboard players set All_Enable ing_WP.Settings 1
execute unless score Location ing_WP.Settings matches 0..1 run scoreboard players set Location ing_WP.Settings 1
execute unless score Distance ing_WP.Settings matches 0..1 run scoreboard players set Distance ing_WP.Settings 1
execute unless score Forceload ing_WP.Settings matches 0..1 run scoreboard players set Forceload ing_WP.Settings 1

execute as @a unless score @s ing_WP.Settings_Location matches 0..1 run scoreboard players set @s ing_WP.Settings_Location 1
execute as @a unless score @s ing_WP.Settings_Distance matches 0..1 run scoreboard players set @s ing_WP.Settings_Distance 1
execute as @a unless score @s ing_WP.Settings_ArrowLocation matches 1..3 run scoreboard players set @s ing_WP.Settings_ArrowLocation 1
execute as @a unless score @s ing_WP.Settings_AutoCancel matches 1.. run scoreboard players set @s ing_WP.Settings_AutoCancel 6
execute as @a unless score @s ing_WP.Settings_Sound matches 0..1 run scoreboard players set @s ing_WP.Settings_Sound 1

## function

# waypoint id

execute as @a if score @s ing_Core.Trigger_Old matches 621..633 run scoreboard players enable @a ing.Waypoint
execute as @a unless score @s ing_Core.Trigger_Old matches 621..633 run trigger ing.Waypoint set 0

execute as @a at @s unless score @s ing.Waypoint matches 0 run function ing_waypoint:trigger/tick_input