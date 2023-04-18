tag @s add ing_waypoint.Private_LoadTarget
execute as @a if score @e[tag=ing_waypoint.Private_LoadTarget,limit=1] ing_WP.DATA_Owner = @s ing_UserData.ID run tag @s add ing_waypoint.Private_LoadPlayer

execute as @e[tag=ing_waypoint.Private_LoadTarget] at @s if score @a[tag=ing_waypoint.Private_LoadPlayer,limit=1] ing_WP.Settings_Invisible matches 1 if score @s ing_WP.DATA_ID matches 0 run particle dust 1 0 0.5 1 ~ ~1 ~ 0.05 0.75 0.05 10 275 force @a[distance=..100,tag=ing_waypoint.Private_LoadPlayer,limit=1]

tag @a remove ing_waypoint.Private_LoadPlayer
tag @s remove ing_waypoint.Private_LoadTarget