execute as @s at @s run function ing:trigger/pages/-100
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Waypoint","color": "dark_green","bold": true},{"text": " Global Waypoint","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "------- ","color": "dark_gray"},{"text" : "Normal","color": "gray","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 631"}},{"text" : " ------- ","color": "dark_gray"},{"text" : "Create","color": "green","bold": true,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 632"}},{"text" : " ------- ","color": "dark_gray"},{"text" : "Delete","color": "gray","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 633"}},{"text" : " -------","color": "dark_gray"}]
tellraw @s {"text" : ""}
tellraw @s [{"text": "Click at ","color": "blue"},{"text": "New Waypoint","color": "#eb9526","bold": true},{"text": " to create new Waypoint","color": "blue","bold": false}]
tellraw @s {"text" : ""}
execute as @s at @s run function ing_waypoint:project/script/all/trigger/main
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------------------------------------------------","color": "dark_gray"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Waypoint Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Help ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}