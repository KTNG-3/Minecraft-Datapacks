# script

scoreboard players add @a[tag=ing_waypoint.LoadPlayer,limit=1] ing_WP.LoadPlayer_Slot 1

execute as @s if score @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Help matches 621 run tellraw @a[tag=ing_waypoint.LoadPlayer,limit=1] [{"text" : ">> ","color":"green","bold": true},{"score":{"name":"@s","objective":"ing_WP.DATA_ID"},"color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "}},{"text": ". ","color": "gold"},{"selector":"@s","color": "gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "},"bold": false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Suggest command","bold":false,"color":"gray"}]}}]
execute as @s if score @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Help matches 622 run tellraw @a[tag=ing_waypoint.LoadPlayer,limit=1] [{"text" : "> ","color":"dark_gray","bold": true},{"score":{"name":"@s","objective":"ing_WP.DATA_ID"},"color":"gray","bold": false},{"text": ". ","color": "gray"},{"selector":"@s","color": "gray","bold": false}]
execute as @s if score @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Help matches 623 run tellraw @a[tag=ing_waypoint.LoadPlayer,limit=1] [{"text" : "-> ","color":"red","bold": true},{"score":{"name":"@s","objective":"ing_WP.DATA_ID"},"color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "}},{"text": ". ","color": "gold"},{"selector":"@s","color": "gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "},"bold": false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Suggest command","bold":false,"color":"gray"}]}}]
execute as @s if score @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Help matches 624 if score @s ing_WP.DATA_Visibility matches 1 run tellraw @a[tag=ing_waypoint.LoadPlayer,limit=1] [{"text" : ">> ","color":"green","bold": true},{"score":{"name":"@s","objective":"ing_WP.DATA_ID"},"color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "}},{"text": ". ","color": "gold"},{"selector":"@s","color": "gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "},"bold": false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Suggest command","bold":false,"color":"gray"}]}}]
execute as @s if score @a[tag=ing_waypoint.LoadPlayer,limit=1] ing.Help matches 624 if score @s ing_WP.DATA_Visibility matches 0 run tellraw @a[tag=ing_waypoint.LoadPlayer,limit=1] [{"text" : ">> ","color":"red","bold": true},{"score":{"name":"@s","objective":"ing_WP.DATA_ID"},"color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "}},{"text": ". ","color": "gold"},{"selector":"@s","color": "gold","clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "},"bold": false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Suggest command","bold":false,"color":"gray"}]}}]