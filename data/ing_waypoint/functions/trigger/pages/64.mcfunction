execute as @s at @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Waypoint","color": "dark_green","bold": true},{"text": " Global Settings","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
execute if score Location ing_WP.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Show Waypoint Location","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6431"},"hoverEvent":{"action":"show_text","contents":[{"text":"Waypoint Location\n\nClick: Hide\nNow: Show","bold":false,"color":"gray"}]}}]
execute if score Location ing_WP.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Show Waypoint Location","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6432"},"hoverEvent":{"action":"show_text","contents":[{"text":"Waypoint Location\n\nClick: Show\nNow: Hide","bold":false,"color":"gray"}]}}]
execute if score Distance ing_WP.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Show Distance","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6441"},"hoverEvent":{"action":"show_text","contents":[{"text":"Distance\n\nClick: Hide\nNow: Show","bold":false,"color":"gray"}]}}]
execute if score Distance ing_WP.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Show Distance","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6442"},"hoverEvent":{"action":"show_text","contents":[{"text":"Distance\n\nClick: Show\nNow: Hide","bold":false,"color":"gray"}]}}]
execute if score Forceload ing_WP.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Always load","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6471"},"hoverEvent":{"action":"show_text","contents":[{"text":"Always load\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute if score Forceload ing_WP.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Always load","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"Always load\n\nNow: Disable","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Personal Waypoint","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6411"},"hoverEvent":{"action":"show_text","contents":[{"text":"Waypoint (Personal)\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute if score Player_Enable ing_WP.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Personal Waypoint","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6412"},"hoverEvent":{"action":"show_text","contents":[{"text":"Waypoint (Personal)\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score All_Enable ing_WP.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Global Waypoint","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6421"},"hoverEvent":{"action":"show_text","contents":[{"text":"Waypoint (Global)\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute if score All_Enable ing_WP.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Global Waypoint","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6422"},"hoverEvent":{"action":"show_text","contents":[{"text":"Waypoint (Global)\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score Player_Enable ing_WP.Settings matches 1 if score All_Enable ing_WP.Settings matches 0 run tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 0 if score All_Enable ing_WP.Settings matches 1 run tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 1 if score All_Enable ing_WP.Settings matches 1 run tellraw @s {"text" : ""}
execute if score Player_Enable ing_WP.Settings matches 1 run tellraw @s [{"text": "","bold": true},{"text" : "[-1] ","color":"red","bold": true,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6451"},"hoverEvent":{"action":"show_text","contents":[{"text":"Max Personal Waypoint\n\nClick: Remove 1","bold":false,"color":"gray"}]}},{"text" : "[+1] ","color":"green","bold": true,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6452"},"hoverEvent":{"action":"show_text","contents":[{"text":"Max Personal Waypoint\n\nClick: Add 1","bold":false,"color":"gray"}]}},{"text": "Max Personal Waypoint","color": "blue"},{"text": ": ","color": "gray","bold": false},{"score":{"name":"Max_Player_Waypoint","objective":"ing_WP.Settings"},"color": "gold"}]
execute if score All_Enable ing_WP.Settings matches 1 run tellraw @s [{"text": "","bold": true},{"text" : "[-1] ","color":"red","bold": true,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6461"},"hoverEvent":{"action":"show_text","contents":[{"text":"Max Global Waypoint\n\nClick: Remove 1","bold":false,"color":"gray"}]}},{"text" : "[+1] ","color":"green","bold": true,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6462"},"hoverEvent":{"action":"show_text","contents":[{"text":"Max Global Waypoint\n\nClick: Add 1","bold":false,"color":"gray"}]}},{"text": "Max Global Waypoint","color": "blue"},{"text": ": ","color": "gray","bold": false},{"score":{"name":"Max_All_Waypoint","objective":"ing_WP.Settings"},"color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Waypoint Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Help ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}