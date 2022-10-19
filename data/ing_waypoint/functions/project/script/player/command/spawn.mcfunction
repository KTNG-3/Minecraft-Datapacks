execute as @s at @s run tp @s ~ ~0.01 ~

# summon
execute as @s at @s align xyz run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text": "Waypoint"}',NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["ing_waypoint.New"],DisabledSlots:4144959}

## location
execute as @s run function ing_location:project/position
execute as @e[tag=ing_waypoint.New,limit=1] at @s run function ing_location:project/position

execute as @s at @s run function ing_location:project/dimension
execute store result score @e[tag=ing_waypoint.New,limit=1] ing_Location.Dimension run scoreboard players get @s ing_Location.Dimension

# ID

scoreboard players add #Total_Waypoint ing_WP.Settings 1
execute as @e[tag=ing_waypoint.New,limit=1] store result score @s ing_WP.DATA_ID run scoreboard players get #Total_Waypoint ing_WP.Settings
execute as @s store result score @e[tag=ing_waypoint.New,limit=1] ing_WP.DATA_Owner run scoreboard players get @s ing_UserData.ID

execute as @e[tag=ing_waypoint.New,limit=1] run scoreboard players set @s ing_WP.DATA_Visibility 0

# done

tag @e[tag=ing_waypoint.New,limit=1] remove ing_waypoint.New

execute as @s at @s run tp @s ~ ~0.01 ~

execute as @s run function ing:trigger/pages/-100

execute as @s run scoreboard players set @s ing.Help 622
execute as @s run function ing_waypoint:trigger/tick

execute as @s run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Create new personal Waypoint at [ ","color":"gold","bold":false},{"score":{"name":"@s","objective":"ing_Location.Position_x"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"@s","objective":"ing_Location.Position_y"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"@s","objective":"ing_Location.Position_z"},"color":"red"},{"text":" ]","color":"gold","bold":false}]
execute as @s run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"We are not recommended to create a Waypoint at a different dimension","color":"gold","bold":false}]