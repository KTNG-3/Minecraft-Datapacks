execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Advancements Helper","color": "dark_green","bold": true},{"text": " Help","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "----------- Helps -----------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
execute if score Enable ing_AVM.Settings matches 0 run tellraw @s[tag=!ing.Admin] [{"text" : "   Nothing to see here","color": "blue"}]
execute if score Enable ing_AVM.Settings matches 1 run tellraw @s [{"text" : ">> ","color":"dark_green","bold": true},{"text": "Advancements","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 51"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Advancements ` Page","bold":false,"color":"gray"}]}}]
execute if score Enable ing_AVM.Settings matches 1 run tellraw @s[tag=ing.Admin] {"text" : " "}
tellraw @s[tag=ing.Admin] [{"text" : ">> ","color":"green","bold": true},{"text": "Global Settings","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 52"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Global Settings ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "-----------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Main Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Main ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}