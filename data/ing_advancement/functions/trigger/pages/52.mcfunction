execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Advancements Helper","color": "dark_green","bold": true},{"text": " Global Settings","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : ""}

execute if score Enable ing_AVM.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Advancements Helper ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 5211"},"hoverEvent":{"action":"show_text","contents":[{"text":"Advancements Helper\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute if score Enable ing_AVM.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Advancements Helper ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 5212"},"hoverEvent":{"action":"show_text","contents":[{"text":"Advancements Helper\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]

tellraw @s {"text" : ""}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Advancements Helper Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Advancements Helper ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}