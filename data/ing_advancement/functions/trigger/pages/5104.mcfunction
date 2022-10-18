execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Advancements Helper","color": "dark_green","bold": true},{"text": " Hot Tourist Destinations","color": "gold"}]
tellraw @s {"text" : " "}

execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/basalt_deltas=true}] as @s run tellraw @s [{"text":"[✓] Basalt Deltas","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/basalt_deltas=false}] as @s run tellraw @s [{"text":"[❌] Basalt Deltas","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/crimson_forest=true}] as @s run tellraw @s [{"text":"[✓] Crimson Forest","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/crimson_forest=false}] as @s run tellraw @s [{"text":"[❌] Crimson Forest","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/nether_wastes=true}] as @s run tellraw @s [{"text":"[✓] Nether Wastes","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/nether_wastes=false}] as @s run tellraw @s [{"text":"[❌] Nether Wastes","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/soul_sand_valley=true}] as @s run tellraw @s [{"text":"[✓] Soul Sand Valley","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/soul_sand_valley=false}] as @s run tellraw @s [{"text":"[❌] Soul Sand Valley","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/warped_forest=true}] as @s run tellraw @s [{"text":"[✓] Warped Forest","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:hot_tourist_destinations/warped_forest=false}] as @s run tellraw @s [{"text":"[❌] Warped Forest","color":"red","bold":true}]

tellraw @s {"text" : " "}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Advancements Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 51"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Advancements ` Menu","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : " "}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}