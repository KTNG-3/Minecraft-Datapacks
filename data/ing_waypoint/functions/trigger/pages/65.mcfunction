execute as @s at @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Waypoint","color": "dark_green","bold": true},{"text": " Personal Settings","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
execute if score @s ing_WP.Settings_Location matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Show Waypoint Location","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6511"},"hoverEvent":{"action":"show_text","contents":[{"text":"Show ` Waypoint Location `\n\nClick: Hide\nNow: Show","bold":false,"color":"gray"}]}}]
execute if score @s ing_WP.Settings_Location matches 0 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "Show Waypoint Location","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6512"},"hoverEvent":{"action":"show_text","contents":[{"text":"Hide ` Waypoint Location `\n\nClick: Show\nNow: Hide","bold":false,"color":"gray"}]}}]
execute if score @s ing_WP.Settings_Distance matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Show Distance","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6521"},"hoverEvent":{"action":"show_text","contents":[{"text":"Show ` Distance `\n\nClick: Hide\nNow: Show","bold":false,"color":"gray"}]}}]
execute if score @s ing_WP.Settings_Distance matches 0 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "Show Distance","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6522"},"hoverEvent":{"action":"show_text","contents":[{"text":"Hide ` Distance `\n\nClick: Show\nNow: Hide","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Waypoint Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Waypoint ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}