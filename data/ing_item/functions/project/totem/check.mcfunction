execute store success score @s ing_Item.Inventory_Totem_Test run data get entity @s Inventory[{Slot:-106b}]

execute if score @s ing_Item.Inventory_Totem_Test matches 0 run function ing_item:project/totem/count
execute if score @s ing_Item.Inventory_Totem_Test matches 0 if score @s ing_Item.Inventory_Totem matches 1.. run function ing_item:project/totem/replace