execute as @s if score @s ing.Help matches 621 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false}]
execute as @s if score @s ing.Help matches 622 run tellraw @s [{"text" : "+> ","color":"green","bold": true},{"text": "New Waypoint","color": "gold","bold": false,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6220"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Create new Waypoint","bold":false,"color":"gray"}]}}]
execute as @s if score @s ing.Help matches 623 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false}]
execute as @s if score @s ing.Help matches 624 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false}]

scoreboard players remove @s ing_WP.LoadPlayer_Empty 1

execute if score @s ing_WP.LoadPlayer_Empty matches 1.. as @s run function ing_waypoint:project/script/player/trigger/slot_empty