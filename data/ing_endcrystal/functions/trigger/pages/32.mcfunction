execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "End Crystal Bossbar","color": "dark_green","bold": true},{"text": " Global Settings","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
execute if score Enable ing_EndCrystal.Settings matches 1 run tellraw @s [{"text" : "[✓] ","color":"green","bold": true},{"text": "End Crystal Bossbar ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 3211"},"hoverEvent":{"action":"show_text","contents":[{"text":"End Crystal Bossbar\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}}]
execute if score Enable ing_EndCrystal.Settings matches 0 run tellraw @s [{"text" : "[✕] ","color":"red","bold": true},{"text": "End Crystal Bossbar ","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 3212"},"hoverEvent":{"action":"show_text","contents":[{"text":"End Crystal Bossbar\n\nClick: Enable\nNow: Disable","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
execute if score Format ing_EndCrystal.Settings matches 1 run tellraw @s [{"text" : "[✎] ","color":"dark_purple","bold": true},{"text": "Display Format","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 3221"},"hoverEvent":{"action":"show_text","contents":[{"text":"End Crystal Bossbar\n\nClick: End Crystal [ <NUM> ]\nNow: End Crystal","bold":false,"color":"gray"}]}},{"text": ": ","color": "gray","bold": false},{"text": "End Crystal","color": "gold","bold": true}]
execute if score Format ing_EndCrystal.Settings matches 2 run tellraw @s [{"text" : "[✎] ","color":"dark_purple","bold": true},{"text": "Display Format","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 3222"},"hoverEvent":{"action":"show_text","contents":[{"text":"End Crystal Bossbar\n\nClick: End Crystal [ <NUM> / <MAX> ]\nNow: End Crystal [ <NUM> ]","bold":false,"color":"gray"}]}},{"text": ": ","color": "gray","bold": false},{"text": "End Crystal [ <NUM> ]","color": "gold","bold": true}]
execute if score Format ing_EndCrystal.Settings matches 3 run tellraw @s [{"text" : "[✎] ","color":"dark_purple","bold": true},{"text": "Display Format","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 3223"},"hoverEvent":{"action":"show_text","contents":[{"text":"End Crystal Bossbar\n\nClick: End Crystal\nNow: End Crystal [ <NUM> / <MAX> ]","bold":false,"color":"gray"}]}},{"text": ": ","color": "gray","bold": false},{"text": "End Crystal [ <NUM> / <MAX> ]","color": "gold","bold": true}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To End Crystal Bossbar Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` End Crystal Bossbar ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}