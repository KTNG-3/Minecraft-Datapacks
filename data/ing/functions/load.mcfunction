scoreboard objectives add ing_Core.Load dummy

# debug

scoreboard players add ing_Core ing_Core.Load 1

scoreboard players add ing_Template ing_Core.Load 0
scoreboard players add ing_Math ing_Core.Load 0
scoreboard players add ing_UserData ing_Core.Load 0
scoreboard players add ing_Location ing_Core.Load 0
scoreboard players add ing_Deathpoint ing_Core.Load 0
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
execute if score ing_Deathpoint ing_Core.Load matches 0 run function #ing_deathpoint:create
execute if score ing_DayCount ing_Core.Load matches 0 run function #ing_daycount:create
execute if score ing_EndCrystal ing_Core.Load matches 0 run function #ing_endcrystal:create
execute if score ing_TNT ing_Core.Load matches 0 run function #ing_tnt:create
execute if score ing_Advancement ing_Core.Load matches 0 run function #ing_advancement:create

# load // active

scoreboard players set ing_Core ing_Core.isActive 1

execute if score ing_Template ing_Core.isActive matches 1 if score ing_Template ing_Core.Load matches 1.. run function #ing_template:load
execute if score ing_Math ing_Core.isActive matches 1 if score ing_Math ing_Core.Load matches 1.. run function #ing_math:load
execute if score ing_UserData ing_Core.isActive matches 1 if score ing_UserData ing_Core.Load matches 1.. run function #ing_userdata:load
execute if score ing_Location ing_Core.isActive matches 1 if score ing_Location ing_Core.Load matches 1.. run function #ing_location:load
execute if score ing_Deathpoint ing_Core.isActive matches 1 if score ing_Deathpoint ing_Core.Load matches 1.. run function #ing_deathpoint:load
execute if score ing_DayCount ing_Core.isActive matches 1 if score ing_DayCount ing_Core.Load matches 1.. run function #ing_daycount:load
execute if score ing_EndCrystal ing_Core.isActive matches 1 if score ing_EndCrystal ing_Core.Load matches 1.. run function #ing_endcrystal:load
execute if score ing_TNT ing_Core.isActive matches 1 if score ing_TNT ing_Core.Load matches 1.. run function #ing_tnt:load
execute if score ing_Advancement ing_Core.isActive matches 1 if score ing_Advancement ing_Core.Load matches 1.. run function #ing_advancement:load