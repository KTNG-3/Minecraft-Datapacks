execute as @s at @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Auto Items","color": "dark_green","bold": true},{"text": " Global Settings","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
execute if score Torch ing_Item.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Auto Torch","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 7211"},"hoverEvent":{"action":"show_text","contents":[{"text":"Auto Refill Torch\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute if score Torch ing_Item.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Auto Torch","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 7212"},"hoverEvent":{"action":"show_text","contents":[{"text":"Auto Refill Torch\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score Totem ing_Item.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "Auto Totem","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 7221"},"hoverEvent":{"action":"show_text","contents":[{"text":"Auto Refill Totem Of Undying\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute if score Totem ing_Item.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "Auto Totem","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 7222"},"hoverEvent":{"action":"show_text","contents":[{"text":"Auto Refill Totem Of Undying\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Auto Items Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Help ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}