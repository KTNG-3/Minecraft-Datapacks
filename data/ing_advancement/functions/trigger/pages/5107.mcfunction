execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Advancements Helper","color": "dark_green","bold": true},{"text": " When the Squad Hops into Town","color": "gold"}]
tellraw @s {"text" : ""}

execute if entity @s[advancements={ing_advancement:when_the_squad_hops_into_town/temperate=true}] as @s run tellraw @s [{"text":"[✓] Temperate","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:when_the_squad_hops_into_town/temperate=false}] as @s run tellraw @s [{"text":"[❌] Temperate","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:when_the_squad_hops_into_town/cold=true}] as @s run tellraw @s [{"text":"[✓] Cold","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:when_the_squad_hops_into_town/cold=false}] as @s run tellraw @s [{"text":"[❌] Cold","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:when_the_squad_hops_into_town/warm=true}] as @s run tellraw @s [{"text":"[✓] Warm","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:when_the_squad_hops_into_town/warm=false}] as @s run tellraw @s [{"text":"[❌] Warm","color":"red","bold":true}]

tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Advancements Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 51"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Advancements ` Menu","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}