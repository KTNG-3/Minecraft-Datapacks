# settings

scoreboard objectives remove ing_WP.Settings

scoreboard objectives remove ing_WP.Settings_Location
scoreboard objectives remove ing_WP.Settings_Distance
scoreboard objectives remove ing_WP.Settings_ArrowLocation
scoreboard objectives remove ing_WP.Settings_AutoCancel
scoreboard objectives remove ing_WP.Settings_Sound

## function

scoreboard objectives remove ing.Waypoint

# distance

scoreboard objectives remove ing_WP.Distance_x
scoreboard objectives remove ing_WP.Distance_y
scoreboard objectives remove ing_WP.Distance_z

scoreboard objectives remove ing_WP.Distance

# command

kill @e[tag=ing_waypoint.New]
kill @e[tag=ing_waypoint.Target]
kill @e[tag=ing_waypoint.All_LoadTarget]
kill @e[tag=ing_waypoint.LoadTarget]
tag @e remove ing_waypoint.New
tag @e remove ing_waypoint.Target
tag @e remove ing_waypoint.All_LoadPlayer
tag @e remove ing_waypoint.All_LoadTarget
tag @e remove ing_waypoint.LoadPlayer
tag @e remove ing_waypoint.LoadTarget
tag @e remove ing_waypoint.Name_LoadPaper
tag @e remove ing_waypoint.Name_LoadTarget
execute as @e[type=minecraft:armor_stand,tag=ing_waypoint.Waypoint] at @s if score @s ing_WP.DATA_FindForceload matches 0 run forceload remove ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=ing_waypoint.Waypoint] run kill @s
tag @e remove ing_waypoint.Waypoint

scoreboard objectives remove ing_WP.DATA_ID
scoreboard objectives remove ing_WP.DATA_Owner
scoreboard objectives remove ing_WP.DATA_Visibility
scoreboard objectives remove ing_WP.DATA_FindForceload

scoreboard objectives remove ing_WP.LoadPlayer_Slot
scoreboard objectives remove ing_WP.LoadPlayer_Empty
scoreboard objectives remove ing_WP.LoadAll_Slot
scoreboard objectives remove ing_WP.LoadAll_Empty


# loop

schedule clear ing_waypoint:project/loop