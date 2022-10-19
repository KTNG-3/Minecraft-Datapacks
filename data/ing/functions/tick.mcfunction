# trigger

scoreboard players enable @a ing.Help

execute as @a at @s run function ing:trigger/tick

# project

execute if score ing_Math ing_Core.isActive matches 1 run function #ing_math:tick
execute if score ing_UserData ing_Core.isActive matches 1 run function #ing_userdata:tick
execute if score ing_Location ing_Core.isActive matches 1 run function #ing_location:tick
execute if score ing_DayCount ing_Core.isActive matches 1 run function #ing_daycount:tick
execute if score ing_EndCrystal ing_Core.isActive matches 1 run function #ing_endcrystal:tick
execute if score ing_TNT ing_Core.isActive matches 1 run function #ing_tnt:tick
execute if score ing_Advancement ing_Core.isActive matches 1 run function #ing_advancement:tick
execute if score ing_Waypoint ing_Core.isActive matches 1 run function #ing_waypoint:tick