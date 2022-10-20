execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Day Counter","color": "dark_green","bold": true},{"text": " Personal Settings","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : " "}

execute as @s if score @s ing_DayCount.Settings_Enable matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Day Counter ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 2111"},"hoverEvent":{"action":"show_text","contents":[{"text":"Day Counter\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute as @s if score @s ing_DayCount.Settings_Enable matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Day Counter ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 2112"},"hoverEvent":{"action":"show_text","contents":[{"text":"Day Counter\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]

execute as @s if score @s ing_DayCount.Settings_Sound matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Sound ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 2121"},"hoverEvent":{"action":"show_text","contents":[{"text":"Sound\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute as @s if score @s ing_DayCount.Settings_Sound matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Sound ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 2122"},"hoverEvent":{"action":"show_text","contents":[{"text":"Sound\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]

tellraw @s {"text" : " "}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Day Counter Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Day Counter ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}