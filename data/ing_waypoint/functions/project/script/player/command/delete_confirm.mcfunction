# script

execute as @a if score @s ing_WP.DATA_ID = @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_ID run function ing_waypoint:project/script/player/command/cancel

execute as @s at @s store result score @s ing_WP.DATA_FindForceload run forceload query
execute as @e[tag=ing_waypoint.LoadBack,limit=1] store result score @s ing_WP.DATA_FindForceload run scoreboard players get @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.DATA_FindForceload
execute as @s if score @s ing_WP.DATA_FindForceload matches 0 run forceload add ~ ~
execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["ing_waypoint.LoadBack"],DisabledSlots:4144959}
execute as @e[tag=ing_waypoint.LoadBack] at @s facing entity @a[tag=ing_waypoint.LoadPlayer,limit=1] eyes run tp @a[tag=ing_waypoint.LoadPlayer,limit=1]
execute as @s run tp @e[tag=ing_waypoint.LoadTarget,limit=1]
execute as @e[tag=ing_waypoint.LoadTarget,limit=1] at @s run function ing_waypoint:project/waypoint_kill
execute as @s run tp @e[tag=ing_waypoint.LoadBack,limit=1]
execute as @s at @s if score @s ing_WP.DATA_FindForceload matches 0 run forceload remove ~ ~
execute as @s run scoreboard players reset @s ing_WP.DATA_FindForceload
kill @e[tag=ing_waypoint.LoadBack,limit=1]

# finish

execute as @s at @s if score @s ing_WP.Settings_Sound matches 1 run playsound minecraft:block.scaffolding.step master @s ~ ~ ~ 0.8 0.1

execute as @s store result score @s ing.Help run scoreboard players get @s ing_Core.Trigger_Last
function ing_waypoint:trigger/tick