execute as @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Advancements Helper","color": "dark_green","bold": true},{"text": " A Complete Catalogue","color": "gold"}]
tellraw @s {"text" : ""}

execute if entity @s[advancements={ing_advancement:a_complete_catalogue/black=true}] as @s run tellraw @s [{"text":"[✓] Black","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/black=false}] as @s run tellraw @s [{"text":"[❌] Black","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/british_shorthair=true}] as @s run tellraw @s [{"text":"[✓] British Shorthair","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/british_shorthair=false}] as @s run tellraw @s [{"text":"[❌] British Shorthair","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/calico=true}] as @s run tellraw @s [{"text":"[✓] Calico","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/calico=false}] as @s run tellraw @s [{"text":"[❌] Calico","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/jellie=true}] as @s run tellraw @s [{"text":"[✓] Jellie","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/jellie=false}] as @s run tellraw @s [{"text":"[❌] Jellie","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/persian=true}] as @s run tellraw @s [{"text":"[✓] Persian","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/persian=false}] as @s run tellraw @s [{"text":"[❌] Persian","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/ragdoll=true}] as @s run tellraw @s [{"text":"[✓] Ragdoll","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/ragdoll=false}] as @s run tellraw @s [{"text":"[❌] Ragdoll","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/red=true}] as @s run tellraw @s [{"text":"[✓] Red","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/red=false}] as @s run tellraw @s [{"text":"[❌] Red","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/siamese=true}] as @s run tellraw @s [{"text":"[✓] Siamese","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/siamese=false}] as @s run tellraw @s [{"text":"[❌] Siamese","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/tabby=true}] as @s run tellraw @s [{"text":"[✓] Tabby","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/tabby=false}] as @s run tellraw @s [{"text":"[❌] Tabby","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/tuxedo=true}] as @s run tellraw @s [{"text":"[✓] Tuxedo","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/tuxedo=false}] as @s run tellraw @s [{"text":"[❌] Tuxedo","color":"red","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/white=true}] as @s run tellraw @s [{"text":"[✓] White","color":"dark_green","bold":true}]
execute if entity @s[advancements={ing_advancement:a_complete_catalogue/white=false}] as @s run tellraw @s [{"text":"[❌] White","color":"red","bold":true}]

tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Advancements Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 51"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Advancements ` Menu","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}