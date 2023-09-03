# setup

tag @s add ing_waypoint.LoadPlayer

# script

execute as @e[type=#ing_waypoint:waypoint,tag=ing_waypoint.Waypoint] if score @s ing_WP.DATA_ID = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Waypoint run tag @s add ing_waypoint.LoadTarget

execute unless entity @e[tag=ing_waypoint.LoadTarget,limit=1] run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Not Found","color":"red","bold":true}]
execute if entity @e[tag=ing_waypoint.LoadTarget,limit=1] unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.UserID unless score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 run tellraw @a[tag=ing_waypoint.LoadPlayer,limit=1] [{"text":"[Waypoint] ","color":"dark_green"},{"text":"You don't have permission to do this","color":"red","bold":true}]
execute if entity @e[tag=ing_waypoint.LoadTarget,limit=1] if score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner = @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.UserID run function ing_waypoint:project/script/player/command/delete_confirm
execute if entity @e[tag=ing_waypoint.LoadTarget,limit=1] if score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 unless entity @a[tag=ing.Admin,tag=ing_waypoint.LoadPlayer,limit=1] run tellraw @a[tag=ing_waypoint.LoadPlayer,limit=1] [{"text":"[Waypoint] ","color":"dark_green"},{"text":"You don't have permission to do this","color":"red","bold":true}]
execute if entity @e[tag=ing_waypoint.LoadTarget,limit=1] if score @e[tag=ing_waypoint.LoadTarget,limit=1] ing_WP.DATA_Owner matches -1 if entity @a[tag=ing.Admin,tag=ing_waypoint.LoadPlayer,limit=1] run function ing_waypoint:project/script/player/command/delete_confirm

# finish

tag @s remove ing_waypoint.LoadPlayer
tag @e remove ing_waypoint.LoadTarget