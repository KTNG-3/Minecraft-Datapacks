execute as @s run scoreboard players enable @s ing.Waypoint
execute as @s at @s run function ing:trigger/pages/-10
tellraw @s {"text":"-----------------------------------------------------","color":"gold"}
tellraw @s [{"text" : "Waypoint","color": "dark_green","bold": true},{"text": " Personal Waypoint","color": "gold"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "--- ","color": "dark_gray"},{"text" : "Normal","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 621"}},{"text" : " ----- ","color": "dark_gray"},{"text" : "Create","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 622"}},{"text" : " ----- ","color": "dark_gray"},{"text" : "Delete","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 623"}},{"text" : " ----- ","color": "dark_gray"},{"text" : "Visibility","color": "green","bold": true,"clickEvent":{"action":"run_command","value":"/trigger ing.Help set 624"}},{"text" : " ---","color": "dark_gray"}]
tellraw @s {"text" : ""}
tellraw @s [{"text": "/trigger ing.Waypoint set {ID}","color": "#eb9526","bold": true,"clickEvent":{"action":"suggest_command","value":"/trigger ing.Waypoint set "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click: Suggest command","bold":false,"color":"gray"}]}},{"text": " to change Waypoint visibility","color": "blue","bold": false}]
tellraw @s {"text" : ""}
execute as @s at @s run function ing_waypoint:project/script/player/trigger/main
tellraw @s {"text" : ""}
tellraw @s [{"text" : "----------------------------------------------------","color": "dark_gray"}]
tellraw @s {"text" : ""}
tellraw @s [{"text" : "<< ","color":"gold","bold": true},{"text": "Back To Waypoint Menu","color": "gold","clickEvent":{"action":"run_command","value":"/trigger ing.Help set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go Back To ` Waypoint ` Page","bold":false,"color":"gray"}]}}]
tellraw @s {"text" : ""}
tellraw @s {"text" : "-----------------------------------------------------","color":"gold"}