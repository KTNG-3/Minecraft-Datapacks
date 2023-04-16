execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Ing Project","color": "dark_green","bold": true},{"text": " Minecraft Datapack","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------- Main -----------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : ">> ","color":"dark_green","bold": true},{"text": "Info","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Info ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s[tag=!ing.Admin] [{"text" : ">> ","color":"red","bold": true},{"text": "Administrator","color": "blue","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function ing:admin/add"},"hoverEvent":{"action":"show_text","contents":[{"text":"Administrator\n\nClick: Add me to Admin","bold":false,"color":"gray"}]}}]
tellraw @s[tag=ing.Admin] [{"text" : ">> ","color":"green","bold": true},{"text": "Administrator","color": "blue","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function ing:admin/remove"},"hoverEvent":{"action":"show_text","contents":[{"text":"Administrator\n\nClick: Remove me from Admin","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
execute if score ing_Advancement ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Advancements Helper","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Advancements Helper ` Page","bold":false,"color":"gray"}]}}]
execute if score ing_Waypoint ing_Core.isActive matches 1 run tellraw @s [{"text" : ">> ","color":"green","bold": true},{"text": "Waypoint","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Waypoint ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------------------------","color": "dark_aqua"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : ">< ","color":"red","bold": true},{"text": "Clear My Chat","color": "red","clickEvent":{"action":"run_command","value":"/trigger ing.Help set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete All Chat Message","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}