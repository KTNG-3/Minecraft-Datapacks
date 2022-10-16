## debug

execute as @a unless score @s ing_UserData.TIME_tik matches 0 run scoreboard players add @s ing_UserData.TIME_tik 0
execute as @a unless score @s ing_UserData.TIME_sec matches 0 run scoreboard players add @s ing_UserData.TIME_sec 0
execute as @a unless score @s ing_UserData.TIME_min matches 0 run scoreboard players add @s ing_UserData.TIME_min 0
execute as @a unless score @s ing_UserData.TIME_hor matches 0 run scoreboard players add @s ing_UserData.TIME_hor 0

execute as @a unless score @s ing_UserData.TIME_tik_ALL matches 0 run scoreboard players add @s ing_UserData.TIME_tik_ALL 0
execute as @a unless score @s ing_UserData.TIME_sec_ALL matches 0 run scoreboard players add @s ing_UserData.TIME_sec_ALL 0
execute as @a unless score @s ing_UserData.TIME_min_ALL matches 0 run scoreboard players add @s ing_UserData.TIME_min_ALL 0
execute as @a unless score @s ing_UserData.TIME_hor_ALL matches 0 run scoreboard players add @s ing_UserData.TIME_hor_ALL 0

## setup

scoreboard players add @a ing_UserData.TIME_tik 1
scoreboard players add @a ing_UserData.TIME_tik_ALL 1

# tick to second

execute as @a[scores={ing_UserData.TIME_tik=20..}] run function ing_userdata:project/online/time/sec

# second to minute

execute as @a[scores={ing_UserData.TIME_sec=60..}] run function ing_userdata:project/online/time/min

# minute to hours

execute as @a[scores={ing_UserData.TIME_min=60..}] run function ing_userdata:project/online/time/hor