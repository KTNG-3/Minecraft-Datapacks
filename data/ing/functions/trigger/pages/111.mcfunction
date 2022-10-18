tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Ing Project","color": "dark_green","bold": true},{"text": " Minecraft Datapack","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "------------ Core ------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
execute if score ing_Math ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Math","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Math `\n\nNow: Enable","bold":false,"color":"gray"}]}}]
execute unless score ing_Math ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "Math","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Math `\n\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score ing_UserData ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "User Data","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` User Data `\n\nNow: Enable","bold":false,"color":"gray"}]}}]
execute unless score ing_UserData ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "User Data","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` User Data `\n\nNow: Disable","bold":false,"color":"gray"}]}}]
execute if score ing_Location ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Location","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Location `\n\nNow: Enable","bold":false,"color":"gray"}]}}]
execute unless score ing_Location ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"red","bold": true},{"text": "Location","color": "blue","hoverEvent":{"action":"show_text","contents":[{"text":"` Location `\n\nNow: Disable","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Info Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Info ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}