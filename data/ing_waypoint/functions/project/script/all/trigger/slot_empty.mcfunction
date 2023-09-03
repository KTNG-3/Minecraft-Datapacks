execute as @s if score @s ing.Help matches 631 unless score @s ing_WP.All_Empty matches 1 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false},{"text": " x","color": "gray","bold": true},{"score":{"name":"@s","objective":"ing_WP.All_Empty"},"color": "gray","bold": true}]
execute as @s if score @s ing.Help matches 631 if score @s ing_WP.All_Empty matches 1 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false}]

execute as @s if score @s ing.Help matches 632 run tellraw @s [{"text" : "+> ","color":"green","bold": true},{"text": "New Waypoint","color": "gold","bold": false,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6320"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Create new Waypoint","bold":false,"color":"gray"}]}}]

execute as @s if score @s ing.Help matches 633 unless score @s ing_WP.All_Empty matches 1 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false},{"text": " x","color": "gray","bold": true},{"score":{"name":"@s","objective":"ing_WP.All_Empty"},"color": "gray","bold": true}]
execute as @s if score @s ing.Help matches 633 if score @s ing_WP.All_Empty matches 1 run tellraw @s [{"text" : "> ","color":"dark_gray","bold": true},{"text": "Empty","color": "gray","bold": false}]

scoreboard players set @s ing_WP.All_Empty 0