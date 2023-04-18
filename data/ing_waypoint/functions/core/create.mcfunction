scoreboard players set ing_Waypoint ing_Core.Load 1

# settings

scoreboard objectives add ing_WP.Settings dummy

scoreboard players set #Total_Waypoint ing_WP.Settings 0
scoreboard players set Max_Player_Waypoint ing_WP.Settings 3
scoreboard players set Max_All_Waypoint ing_WP.Settings 5

scoreboard objectives add ing_WP.Settings_Location dummy
scoreboard objectives add ing_WP.Settings_Distance dummy
scoreboard objectives add ing_WP.Settings_ArrowLocation dummy
scoreboard objectives add ing_WP.Settings_AutoCancel dummy
scoreboard objectives add ing_WP.Settings_Sound dummy
scoreboard objectives add ing_WP.Settings_Invisible dummy

## function

scoreboard objectives add ing.Waypoint trigger
scoreboard objectives add ing.Waypoint.Cancel trigger

# distance

scoreboard objectives add ing_WP.Distance_x dummy
scoreboard objectives add ing_WP.Distance_y dummy
scoreboard objectives add ing_WP.Distance_z dummy

scoreboard objectives add ing_WP.Distance dummy

# command

scoreboard objectives add ing_WP.DATA_ID dummy
scoreboard objectives add ing_WP.DATA_Owner dummy
scoreboard objectives add ing_WP.DATA_Visibility dummy
scoreboard objectives add ing_WP.DATA_FindForceload dummy

scoreboard objectives add ing_WP.LoadPlayer_Slot dummy
scoreboard objectives add ing_WP.LoadPlayer_Empty dummy
scoreboard objectives add ing_WP.LoadAll_Slot dummy
scoreboard objectives add ing_WP.LoadAll_Empty dummy