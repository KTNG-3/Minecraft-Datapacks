tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Ing Project","color": "dark_green","bold": true},{"text": " Minecraft Datapack","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "------------ Datapacks ------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
execute if score ing_DayCount ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Day Counter","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Day Counter `\n\nNow: Enable","bold":false,"color":"gray"}]}}]
execute unless score ing_DayCount ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "Day Counter","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Day Counter `\n\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score ing_EndCrystal ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "End Crystal Bossbar","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` End Crystal Bossbar `\n\nNow: Enable","bold":false,"color":"gray"}]}}]
execute unless score ing_EndCrystal ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "End Crystal Bossbar","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` End Crystal Bossbar `\n\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score ing_TNT ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "TNT Timer","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` TNT Timer `\n\nNow: Enable","bold":false,"color":"gray"}]}}]
execute unless score ing_TNT ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "TNT Timer","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` TNT Timer `\n\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score ing_Advancement ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Advancements Helper","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Advancements Helper `\n\nNow: Enable","bold":false,"color":"gray"}]}}]
execute unless score ing_Advancement ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "Advancements Helper","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Advancements Helper `\n\nNow: Disable","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "-----------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Info Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Info ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}