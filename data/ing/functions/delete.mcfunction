# project

function #ing_userdata:delete
function #ing_math:delete
function #ing_location:delete
function #ing_daycount:delete
function #ing_endcrystal:delete
function #ing_tnt:delete
function #ing_advancement:delete
function #ing_waypoint:delete

# delete

scoreboard objectives remove ing_Core.Load
scoreboard objectives remove ing_Core.Load_Temp

scoreboard objectives remove ing_Core.isActive

scoreboard objectives remove ing.Help
scoreboard objectives remove ing_Core.Trigger_Old
scoreboard objectives remove ing_Core.Trigger_OldTime

# disable

datapack disable "file/ING Project Minecraft Datapack"