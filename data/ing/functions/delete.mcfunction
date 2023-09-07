# project

function #ing_userdata:delete
function #ing_math:delete
function #ing_location:delete
function #ing_advancement:delete
function #ing_waypoint:delete
function #ing_item:delete

# delete

scoreboard objectives remove ing_Core.Load
scoreboard objectives remove ing_Core.Load_Temp

scoreboard objectives remove ing_Core.isActive

scoreboard objectives remove ing.UserID

scoreboard objectives remove ing.Help
scoreboard objectives remove ing_Core.Trigger_Last
scoreboard objectives remove ing_Core.Trigger_LastTime

tag @e remove ing.Admin

# disable

datapack disable "file/ING Project Minecraft Datapack"