scoreboard players set ing_UserData ing_Core.isActive 1
scoreboard players set ing_UserData ing_Core.Load 1

## function

scoreboard objectives add ing_UserData.ID dummy

scoreboard objectives add ing_UserData.Death deathCount [{"text":"☠ ","bold":false,"color":"red"},{"text":"Death","bold":true,"color":"red"}]
scoreboard objectives add ing_UserData.Health health [{"text":"❤ ","bold":false,"color":"red"},{"text":"Health","bold":true,"color":"red"}]
scoreboard objectives add ing_UserData.Armor armor [{"text":"⛨ ","bold":false,"color":"red"},{"text":"Armor","bold":true,"color":"red"}]
scoreboard objectives add ing_UserData.Kill playerKillCount [{"text":"⚔ ","bold":false,"color":"red"},{"text":"Player Kill","bold":true,"color":"red"}]
scoreboard objectives add ing_UserData.MobKill minecraft.custom:minecraft.mob_kills [{"text":"⚔ ","bold":false,"color":"red"},{"text":"Mob Kill","bold":true,"color":"red"}]
scoreboard objectives add ing_UserData.Damage_Temp minecraft.custom:minecraft.damage_dealt
scoreboard objectives add ing_UserData.Damage dummy [{"text":"⚔ ","bold":false,"color":"red"},{"text":"Damage","bold":true,"color":"red"}]

scoreboard objectives setdisplay belowName ing_UserData.Health
scoreboard objectives setdisplay list ing_UserData.Health

# online time

scoreboard objectives add ing_UserData.TIME_tik dummy
scoreboard objectives add ing_UserData.TIME_sec dummy
scoreboard objectives add ing_UserData.TIME_min dummy

scoreboard objectives add ing_UserData.TIME_tik_ALL dummy
scoreboard objectives add ing_UserData.TIME_sec_ALL dummy [{"text":"⌚ ","bold":false,"color":"red"},{"text":"Playtime (seconds)","bold":true,"color":"red"}]
scoreboard objectives add ing_UserData.TIME_min_ALL dummy [{"text":"⌚ ","bold":false,"color":"red"},{"text":"Playtime (minutes)","bold":true,"color":"red"}]
scoreboard objectives add ing_UserData.TIME_hor_ALL dummy [{"text":"⌚ ","bold":false,"color":"red"},{"text":"Playtime (hours)","bold":true,"color":"red"}]