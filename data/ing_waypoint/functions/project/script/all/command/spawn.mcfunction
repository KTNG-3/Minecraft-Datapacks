execute as @s at @s align xz run tp @s ~0.50 ~ ~0.50

# summon
execute as @s at @s run summon minecraft:item_display ~ ~0.50 ~ {CustomNameVisible:1b,CustomName:'{"text": "Waypoint"}',NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["ing_waypoint.New", "ing_waypoint.Waypoint"],DisabledSlots:4144959,item:{id:"minecraft:writable_book",Count:1b},billboard:"vertical",item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.15f,0f],scale:[1f,1f,1f]}}

## location
execute as @e[tag=ing_waypoint.New,limit=1] at @s run function ing_location:project/position

execute store result score @e[tag=ing_waypoint.New,limit=1] ing_Location.Dimension run scoreboard players get @s ing_Location.Dimension

# ID

scoreboard players add #Total_Waypoint ing_WP.Settings 1
execute as @e[tag=ing_waypoint.New,limit=1] store result score @s ing_WP.DATA_ID run scoreboard players get #Total_Waypoint ing_WP.Settings
execute as @e[tag=ing_waypoint.New,limit=1] run scoreboard players set @s ing_WP.DATA_Owner -1

execute as @e[tag=ing_waypoint.New,limit=1] run scoreboard players set @s ing_WP.DATA_Visibility 1

# forceload

execute as @e[tag=ing_waypoint.New,limit=1] at @s if score Forceload ing_WP.Settings matches 0 run scoreboard players set @s ing_WP.DATA_FindForceload -1
execute as @e[tag=ing_waypoint.New,limit=1] at @s unless score Forceload ing_WP.Settings matches 0 store success score @s ing_WP.DATA_FindForceload run forceload query ~ ~
execute as @e[tag=ing_waypoint.New,limit=1] at @s unless score Forceload ing_WP.Settings matches 0 if score @s ing_WP.DATA_FindForceload matches 0 run forceload add ~ ~ ~ ~

# done

tag @e[tag=ing_waypoint.New,limit=1] remove ing_waypoint.New

execute as @s[tag=ing.Admin] run scoreboard players set @s ing.Help 632
execute as @s[tag=ing.Admin] run function ing:trigger/tick

execute as @s run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"Create new global Waypoint at [ ","color":"gold","bold":false},{"score":{"name":"@s","objective":"ing_Location.Position_x"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"@s","objective":"ing_Location.Position_y"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"@s","objective":"ing_Location.Position_z"},"color":"red"},{"text":" ]","color":"gold","bold":false}]
execute if score Forceload ing_WP.Settings matches 0 unless score @s ing_Location.Dimension matches 1 as @s run tellraw @s [{"text":"[Waypoint] ","color":"dark_green"},{"text":"We are not recommended to create a Waypoint in multiple dimensions","color":"gold","bold":false}]

execute as @s at @s if score @s ing_WP.Settings_Sound matches 1 run playsound minecraft:block.amethyst_block.fall master @s ~ ~ ~ 0.6 2