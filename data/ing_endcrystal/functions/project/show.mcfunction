#script

execute in minecraft:the_end if entity @e[type=ender_dragon,limit=1] run execute store result bossbar ing_endcrystal:end_crystal value run scoreboard players get EndCrystal ing_EndCrystal.Settings
execute run bossbar set ing_endcrystal:end_crystal visible true
#execute if score Set_Crystal ing.Settings matches 0 run bossbar set ing_endcrystal:end_crystal visible false

#change name

execute if score EndCrystal ing_EndCrystal.Settings matches 10.. run bossbar set ing_endcrystal:end_crystal name [{"text":"End Crystal [ ","color":"dark_purple","bold":true},{"score":{"name":"EndCrystal","objective":"ing_EndCrystal.Settings"},"color":"dark_red"},{"text":" / 10","color":"dark_red","bold":true},{"text":" ]","color":"dark_purple","bold":true}]
execute if score EndCrystal ing_EndCrystal.Settings matches 8..9 run bossbar set ing_endcrystal:end_crystal name [{"text":"End Crystal [ ","color":"dark_purple","bold":true},{"score":{"name":"EndCrystal","objective":"ing_EndCrystal.Settings"},"color":"red"},{"text":" / 10","color":"red","bold":true},{"text":" ]","color":"dark_purple","bold":true}]
execute if score EndCrystal ing_EndCrystal.Settings matches 6..7 run bossbar set ing_endcrystal:end_crystal name [{"text":"End Crystal [ ","color":"dark_purple","bold":true},{"score":{"name":"EndCrystal","objective":"ing_EndCrystal.Settings"},"color":"gold"},{"text":" / 10","color":"gold","bold":true},{"text":" ]","color":"dark_purple","bold":true}]
execute if score EndCrystal ing_EndCrystal.Settings matches 4..5 run bossbar set ing_endcrystal:end_crystal name [{"text":"End Crystal [ ","color":"dark_purple","bold":true},{"score":{"name":"EndCrystal","objective":"ing_EndCrystal.Settings"},"color":"yellow"},{"text":" / 10","color":"yellow","bold":true},{"text":" ]","color":"dark_purple","bold":true}]
execute if score EndCrystal ing_EndCrystal.Settings matches 2..3 run bossbar set ing_endcrystal:end_crystal name [{"text":"End Crystal [ ","color":"dark_purple","bold":true},{"score":{"name":"EndCrystal","objective":"ing_EndCrystal.Settings"},"color":"dark_green"},{"text":" / 10","color":"dark_green","bold":true},{"text":" ]","color":"dark_purple","bold":true}]
execute if score EndCrystal ing_EndCrystal.Settings matches ..1 run bossbar set ing_endcrystal:end_crystal name [{"text":"End Crystal [ ","color":"dark_purple","bold":true},{"score":{"name":"EndCrystal","objective":"ing_EndCrystal.Settings"},"color":"green"},{"text":" / 10","color":"green","bold":true},{"text":" ]","color":"dark_purple","bold":true}]

#showup who

execute in minecraft:the_end at @e[type=ender_dragon,limit=1] run bossbar set ing_endcrystal:end_crystal players @a[distance=..200]