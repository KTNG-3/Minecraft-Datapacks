scoreboard objectives add ing_Core.Load dummy
scoreboard objectives add ing_Core.Load_Temp dummy

scoreboard objectives add ing_Core.isActive dummy

# debug

scoreboard players add ing_Core ing_Core.Load 1

scoreboard players add ing_Template ing_Core.Load 0
scoreboard players add ing_Math ing_Core.Load 0
scoreboard players add ing_UserData ing_Core.Load 0
scoreboard players add ing_Location ing_Core.Load 0
scoreboard players add ing_DayCount ing_Core.Load 0
scoreboard players add ing_EndCrystal ing_Core.Load 0
scoreboard players add ing_TNT ing_Core.Load 0
scoreboard players add ing_Advancement ing_Core.Load 0

# create

execute if score ing_Core ing_Core.Load matches 1 run function ing:create

execute if score ing_Template ing_Core.Load matches 0 run function #ing_template:create
execute if score ing_Math ing_Core.Load matches 0 run function #ing_math:create
execute if score ing_UserData ing_Core.Load matches 0 run function #ing_userdata:create
execute if score ing_Location ing_Core.Load matches 0 run function #ing_location:create
execute if score ing_DayCount ing_Core.Load matches 0 run function #ing_daycount:create
execute if score ing_EndCrystal ing_Core.Load matches 0 run function #ing_endcrystal:create
execute if score ing_TNT ing_Core.Load matches 0 run function #ing_tnt:create
execute if score ing_Advancement ing_Core.Load matches 0 run function #ing_advancement:create

# load temp

execute store result score ing_Template ing_Core.Load_Temp run scoreboard players get ing_Template ing_Core.Load
execute store result score ing_Math ing_Core.Load_Temp run scoreboard players get ing_Math ing_Core.Load
execute store result score ing_UserData ing_Core.Load_Temp run scoreboard players get ing_UserData ing_Core.Load
execute store result score ing_Location ing_Core.Load_Temp run scoreboard players get ing_Location ing_Core.Load
execute store result score ing_DayCount ing_Core.Load_Temp run scoreboard players get ing_DayCount ing_Core.Load
execute store result score ing_EndCrystal ing_Core.Load_Temp run scoreboard players get ing_EndCrystal ing_Core.Load
execute store result score ing_TNT ing_Core.Load_Temp run scoreboard players get ing_TNT ing_Core.Load
execute store result score ing_Advancement ing_Core.Load_Temp run scoreboard players get ing_Advancement ing_Core.Load

# load

function #ing_template:load
function #ing_math:load
function #ing_userdata:load
function #ing_location:load
function #ing_daycount:load
function #ing_endcrystal:load
function #ing_tnt:load
function #ing_advancement:load

# active

scoreboard players set ing_Template ing_Core.isActive 1
scoreboard players set ing_Math ing_Core.isActive 1
scoreboard players set ing_UserData ing_Core.isActive 1
scoreboard players set ing_Location ing_Core.isActive 1
scoreboard players set ing_DayCount ing_Core.isActive 1
scoreboard players set ing_EndCrystal ing_Core.isActive 1
scoreboard players set ing_TNT ing_Core.isActive 1
scoreboard players set ing_Advancement ing_Core.isActive 1

execute if score ing_Template ing_Core.Load = ing_Template ing_Core.Load_Temp run scoreboard players set ing_Template ing_Core.isActive 0
execute if score ing_Math ing_Core.Load = ing_Math ing_Core.Load_Temp run scoreboard players set ing_Math ing_Core.isActive 0
execute if score ing_UserData ing_Core.Load = ing_UserData ing_Core.Load_Temp run scoreboard players set ing_UserData ing_Core.isActive 0
execute if score ing_Location ing_Core.Load = ing_Location ing_Core.Load_Temp run scoreboard players set ing_Location ing_Core.isActive 0
execute if score ing_DayCount ing_Core.Load = ing_DayCount ing_Core.Load_Temp run scoreboard players set ing_DayCount ing_Core.isActive 0
execute if score ing_EndCrystal ing_Core.Load = ing_EndCrystal ing_Core.Load_Temp run scoreboard players set ing_EndCrystal ing_Core.isActive 0
execute if score ing_TNT ing_Core.Load = ing_TNT ing_Core.Load_Temp run scoreboard players set ing_TNT ing_Core.isActive 0
execute if score ing_Advancement ing_Core.Load = ing_Advancement ing_Core.Load_Temp run scoreboard players set ing_Advancement ing_Core.isActive 0

# message

execute as @a at @s run tellraw @s [{"text": "[ Load - Ing Project ]","color": "green","bold": true,"hoverEvent":{"action":"show_text","contents":[{"text":"Loaded Datapack\n\nClick: Open Datapack's Menu","bold":false,"color":"gray"}]}}]