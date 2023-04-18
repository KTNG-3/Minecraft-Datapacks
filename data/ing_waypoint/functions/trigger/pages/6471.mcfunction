execute as @s at @s run function ing:trigger/pages/-10
tellraw @s [{"text" : "------------------------------------","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "     We need your confirmation","color": "gold","bold": false}
tellraw @s {"text" : "   You can't change it back","color": "red","bold": true}
tellraw @s {"text" : ""}
tellraw @s {"text" : " All Waypoints in a different dimension","color": "red","bold": false}
tellraw @s {"text" : "  or too far away from the players","color": "red","bold": false}
tellraw @s {"text" : "          will be not loaded","color": "red","bold": false}
tellraw @s {"text" : ""}
tellraw @s [{"text" : "     [✓] ","color":"green","bold": true},{"text": "YES","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 64711"},"hoverEvent":{"action":"show_text","contents":[{"text":"Always load\n\nClick: Disable\nNow: Enable","bold":false,"color":"gray"}]}},{"text": "       "},{"text" : "[✕] ","color":"red","bold": true},{"text": "NO","color": "blue","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 64"},"hoverEvent":{"action":"show_text","contents":[{"text":"Always load\n\nClick: Go Back To ` Global Settings ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "------------------------------------","color": "gold"}]