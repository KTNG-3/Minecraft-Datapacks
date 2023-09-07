# settings

execute unless score Torch ing_Item.Settings matches 0..1 run scoreboard players set Torch ing_Item.Settings 0
execute unless score Totem ing_Item.Settings matches 0..1 run scoreboard players set Totem ing_Item.Settings 0

execute as @a unless score @s ing_Item.Settings_Torch matches 0..1 run scoreboard players set @s ing_Item.Settings_Torch 0
execute as @a unless score @s ing_Item.Settings_Totem matches 0..1 run scoreboard players set @s ing_Item.Settings_Totem 1

## function

execute if score Torch ing_Item.Settings matches 1 as @a if score @s ing_Item.Settings_Torch matches 1 run function ing_item:project/torch/check

execute if score Totem ing_Item.Settings matches 1 as @a if score @s ing_Item.Settings_Totem matches 1 if score @s ing_Item.Inventory_Totem_Use matches 1.. run function ing_item:project/totem/check