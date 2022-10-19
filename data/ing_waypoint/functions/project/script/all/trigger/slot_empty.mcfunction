execute as @s if score @s ing.Help matches 631 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false}]
execute as @s if score @s ing.Help matches 632 run tellraw @s [{"text" : "+> ","color":"green","bold": true},{"text": "New Waypoint","color": "gold","bold": false,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6320"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Create new Waypoint","bold":false,"color":"gray"}]}}]
execute as @s if score @s ing.Help matches 633 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false}]

scoreboard players remove @s ing_WP.LoadAll_Empty 1

execute if score @s ing_WP.LoadAll_Empty matches 1.. as @s run function ing_waypoint:project/script/all/trigger/slot_empty