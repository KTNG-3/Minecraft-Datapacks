execute as @s at @s run function ing_waypoint:project/distance
execute as @e[tag=ing_waypoint.Target,limit=1] at @s if score @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.Distance matches ..100 run function ing_waypoint:project/particle/laser

execute as @s at @s positioned ^ ^1.275 ^2.175 facing entity @e[tag=ing_waypoint.Target,limit=1] eyes run function ing_waypoint:project/particle/arrow

execute if score Distance ing_WP.Settings matches 1 as @s if score @s ing_WP.Settings_Distance matches 1 run title @s actionbar [{"text":"You are far away from [ ","color":"gold","bold":false},{"score":{"name":"@e[tag=ing_waypoint.Target,limit=1]","objective":"ing_WP.DATA_ID"},"color":"red"},{"text": ". ","color": "red","bold": false},{"selector":"@e[tag=ing_waypoint.Target,limit=1]","color":"red","bold":false},{"text":" ] By [ ","color":"gold","bold":false},{"score":{"name":"@s","objective":"ing_WP.Distance"},"color":"red"},{"text":" blocks","color":"red","bold":false},{"text":" ]","color":"gold","bold":false}]

execute as @s if score @s ing_WP.Distance matches ..10 run function ing_waypoint:project/script/player/command/cancel