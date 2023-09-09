# this will not work if
# a^2 + b^2 > 32bit max number

## SETUP

execute as @s at @s run scoreboard players reset @s ing_WP.Distance_x
execute as @s at @s run scoreboard players reset @s ing_WP.Distance_y
execute as @s at @s run scoreboard players reset @s ing_WP.Distance_z

# [x] => (a)

execute as @s at @s run scoreboard players operation @s ing_WP.Distance_x = @s ing_Location.Position_x
execute as @s at @s run scoreboard players operation @s ing_WP.Distance_x -= @e[tag=ing_waypoint.Target,limit=1] ing_Location.Position_x
execute as @s at @s if score @s ing_WP.Distance_x matches ..-1 run scoreboard players operation @s ing_WP.Distance_x *= -1 ing_MATH.Static_Number
execute as @s at @s run scoreboard players operation @s ing_Math.Pythagoras_A = @s ing_WP.Distance_x

# [z] => (b)

execute as @s at @s run scoreboard players operation @s ing_WP.Distance_z = @s ing_Location.Position_z
execute as @s at @s run scoreboard players operation @s ing_WP.Distance_z -= @e[tag=ing_waypoint.Target,limit=1] ing_Location.Position_z
execute as @s at @s if score @s ing_WP.Distance_z matches ..-1 run scoreboard players operation @s ing_WP.Distance_z *= -1 ing_MATH.Static_Number
execute as @s at @s run scoreboard players operation @s ing_Math.Pythagoras_B = @s ing_WP.Distance_z

# [x, z] => <(a)^2, (b)^2 => {c}^2>

execute as @s at @s run function ing_math:project/pythagoras/start

# {c} => (a)

execute as @s at @s if score @s ing_Math.Pythagoras_C matches ..-1 run scoreboard players operation @s ing_Math.Pythagoras_C *= @s ing_MATH.Static_Number
execute as @s at @s run scoreboard players operation @s ing_Math.Pythagoras_A = @s ing_Math.Pythagoras_C

# [y] => (b)

execute as @s at @s run scoreboard players operation @s ing_WP.Distance_y = @s ing_Location.Position_y
execute as @s at @s run scoreboard players operation @s ing_WP.Distance_y -= @e[tag=ing_waypoint.Target,limit=1] ing_Location.Position_y
execute as @s at @s if score @s ing_WP.Distance_y matches ..-1 run scoreboard players operation @s ing_WP.Distance_y *= -1 ing_MATH.Static_Number
execute as @s at @s run scoreboard players operation @s ing_Math.Pythagoras_B = @s ing_WP.Distance_y

# {c}, [y] => <(a)^2, (b)^2 => {c}^2>

execute as @s at @s run function ing_math:project/pythagoras/start

## FINISH

execute as @s at @s run scoreboard players reset @s ing_WP.Distance
execute as @s at @s store result score @s ing_WP.Distance run scoreboard players get @s ing_Math.Pythagoras_C