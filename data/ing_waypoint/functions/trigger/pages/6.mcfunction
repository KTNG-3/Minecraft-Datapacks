execute as @s at @s run function ing:trigger/pages/-100
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Waypoint","color": "dark_green","bold": true},{"text": " Help","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------- Main -----------","color": "dark_aqua"}]
execute if score Player_Enable ing_WP.Settings matches 0 if score All_Enable ing_WP.Settings matches 0 if entity @s run tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 0 if score All_Enable ing_WP.Settings matches 0 if entity @s run tellraw @s {"text" : "   Nothing to see here","color": "blue"}
execute if score Player_Enable ing_WP.Settings matches 1 if score All_Enable ing_WP.Settings matches 1 run tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 1 if score All_Enable ing_WP.Settings matches 0 run tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 0 if score All_Enable ing_WP.Settings matches 1 run tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Personal Waypoint","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 621"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Personal Waypoint ` Page","bold":false,"color":"gray"}]}}]
execute if score All_Enable ing_WP.Settings matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Global Waypoint","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 631"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Global Waypoint ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Personal Settings","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 65"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Personal Settings ` Page","bold":false,"color":"gray"}]}}]
tellraw @s[tag=ing.Admin] [{"text" : ">> ","color":"green","bold": true},{"text": "Global Settings","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 64"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Global Settings ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Main Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Main ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}