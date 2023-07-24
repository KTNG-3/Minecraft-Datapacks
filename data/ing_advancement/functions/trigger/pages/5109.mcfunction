execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Advancements Helper","color": "dark_green","bold": true},{"text": " Smithing With Style","color": "gold"}]
tellraw @s {"text" : ""}

execute if entity @s[advancements={ing_advancement:smithing_with_style/rib=true}] as @s run tellraw @s [{"text":"[✓] Rib Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/rib=false}] as @s run tellraw @s [{"text":"[❌] Rib Armor Trim","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/silence=true}] as @s run tellraw @s [{"text":"[✓] Silence Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/silence=false}] as @s run tellraw @s [{"text":"[❌] Silence Armor Trim","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/snout=true}] as @s run tellraw @s [{"text":"[✓] Snout Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/snout=false}] as @s run tellraw @s [{"text":"[❌] Snout Armor Trim","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/spire=true}] as @s run tellraw @s [{"text":"[✓] Spire Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/spire=false}] as @s run tellraw @s [{"text":"[❌] Spire Armor Trim","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/tide=true}] as @s run tellraw @s [{"text":"[✓] Tide Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/tide=false}] as @s run tellraw @s [{"text":"[❌] Tide Armor Trim","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/vex=true}] as @s run tellraw @s [{"text":"[✓] Vex Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/vex=false}] as @s run tellraw @s [{"text":"[❌] Vex Armor Trim","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/ward=true}] as @s run tellraw @s [{"text":"[✓] Ward Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/ward=false}] as @s run tellraw @s [{"text":"[❌] Ward Armor Trim","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/wayfinder=true}] as @s run tellraw @s [{"text":"[✓] Wayfinder Armor Trim","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:smithing_with_style/wayfinder=false}] as @s run tellraw @s [{"text":"[❌] Wayfinder Armor Trim","color":"red","bold":true}]

tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Advancements Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 51"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Advancements ` Menu","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}