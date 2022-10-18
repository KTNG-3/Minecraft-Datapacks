execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Ing Project","color": "dark_green","bold": true},{"text": " Minecraft Datapack","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "----------- Helps -----------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : ">> ","color":"dark_green","bold": true},{"text": "Info","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Info ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
execute if score ing_DayCount ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Day Counter","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Day Counter ` Page","bold":false,"color":"gray"}]}}]
execute if score ing_EndCrystal ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "End Crystal Bossbar","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` End Crystal Bossbar ` Page","bold":false,"color":"gray"}]}}]
execute if score ing_TNT ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "TNT Timer","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` TNT Timer ` Page","bold":false,"color":"gray"}]}}]
execute if score ing_Advancement ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Advancements Helper","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Advancements Helper ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "-----------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<> ","color":"gold","bold": true},{"text": "Reload This Page","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reload This Page","bold":false,"color":"gray"}]}}]
tellraw @s [{"text" : ">< ","color":"red","bold": true},{"text": "Clear My Chat","color": "red","clickEvent":{"action":"run_command","value":"/trigger ing.Help set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete All Chat Message","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}