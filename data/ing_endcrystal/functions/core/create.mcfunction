scoreboard players set ing_EndCrystal ing_Core.Load 1

# settings

scoreboard objectives add ing_EndCrystal.Settings dummy

scoreboard objectives add ing_EndCrystal.Settings_Enable dummy

## function

bossbar add ing_endcrystal:end_crystal {"text":"End Crystal","color":"dark_purple","bold":true}
bossbar set ing_endcrystal:end_crystal style notched_10
bossbar set ing_endcrystal:end_crystal max 10
bossbar set ing_endcrystal:end_crystal value 0
bossbar set ing_endcrystal:end_crystal color purple

scoreboard objectives add ing_EndCrystal.Data dummy