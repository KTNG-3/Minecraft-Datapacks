execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Ing Project","color": "dark_green","bold": true},{"text": " Minecraft Datapack","color": "gold"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "------------ Info ------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "Create By >> ","color":"green","bold": true},{"text": "ING3_","color": "blue","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/ing3_/"},"hoverEvent":{"action":"show_text","contents":[{"text":"Planet Minecraft\n\nClick: Open Website","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "------------ Status ------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : ">> ","color":"dark_green","bold": true},{"text": "Core Status","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 111"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Core Status ` Page","bold":false,"color":"gray"}]}}]
tellraw @s [{"text" : ">> ","color":"dark_green","bold": true},{"text": "Datapack Status","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 112"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To ` Datapack Status ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "--------------------------------","color": "dark_aqua"}]
tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Main Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Main ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}