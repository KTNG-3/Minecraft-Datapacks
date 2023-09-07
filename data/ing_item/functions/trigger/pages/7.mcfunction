execute as @s at @s run function ing:trigger/pages/-100
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Auto Items","color": "dark_green","bold": true},{"text": " Help","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------- Settings -----------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Personal Settings","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 71"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Personal Settings ` Page","bold":false,"color":"gray"}]}}]
tellraw @s[tag=ing.Admin] [{"text" : ">> ","color":"green","bold": true},{"text": "Global Settings","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 72"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Global Settings ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Main Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Main ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}