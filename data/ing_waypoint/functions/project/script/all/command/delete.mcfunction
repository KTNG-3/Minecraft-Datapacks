# setup

tag @s add ing_waypoint.All_LoadPlayer

execute as @s at @s run function ing:trigger/pages/-1

# script

execute as @e[type=minecraft:armor_stand,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_Owner matches -1 if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.All_LoadPlayer,limit=1] ing.Waypoint run tag @s add ing_waypoint.All_LoadTarget

execute as @a if score @s ing_WP.DATA_ID = @e[tag=ing_waypoint.All_LoadTarget,limit=1] ing_WP.DATA_ID run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"[ ","color":"gold","bold":false},{"score":{"name":"@e[tag=ing_waypoint.All_LoadTarget,limit=1]","objective":"ing_WP.DATA_ID"},"color":"red"},{"text":". ","color": "red"},{"selector":"@e[tag=ing_waypoint.All_LoadTarget,limit=1]","color":"red"},{"text":" ] has been deleted","color":"gold","bold":false}]
execute as @a if score @s ing_WP.DATA_ID = @e[tag=ing_waypoint.All_LoadTarget,limit=1] ing_WP.DATA_ID run scoreboard players set @s ing_WP.DATA_ID 0

execute as @e[tag=ing_waypoint.All_LoadTarget,limit=1] at @s if score @s ing_WP.DATA_FindForceload matches 0 if score Forceload ing_WP.Settings matches 1 run forceload remove ~ ~ ~ ~

kill @e[tag=ing_waypoint.All_LoadTarget,limit=1]

# finish

execute as @s at @s if score @s ing_WP.Settings_Sound matches 1 run playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 1 1 1

tag @s remove ing_waypoint.All_LoadPlayer
tag @e remove ing_waypoint.All_LoadTarget

execute as @s[tag=ing.Admin] run scoreboard players set @s ing.Help 633
execute as @s[tag=ing.Admin] run function ing:trigger/tick