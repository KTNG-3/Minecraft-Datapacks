execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Advancements Helper","color": "dark_green","bold": true},{"text": " With Our Powers Combined!","color": "gold"}]
tellraw @s {"text" : " "}

execute if entity @s[advancements={ing_advancement:with_our_powers_combined/ochre=true}] as @s run tellraw @s [{"text":"[✓] Ochre Froglight","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:with_our_powers_combined/ochre=false}] as @s run tellraw @s [{"text":"[❌] Ochre Froglight","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:with_our_powers_combined/verdant=true}] as @s run tellraw @s [{"text":"[✓] Verdant Froglight","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:with_our_powers_combined/verdant=false}] as @s run tellraw @s [{"text":"[❌] Verdant Froglight","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:with_our_powers_combined/pearlescent=true}] as @s run tellraw @s [{"text":"[✓] Pearlescent Froglight","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:with_our_powers_combined/pearlescent=false}] as @s run tellraw @s [{"text":"[❌] Pearlescent Froglight","color":"red","bold":true}]

tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Advancements Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 51"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Advancements ` Menu","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}