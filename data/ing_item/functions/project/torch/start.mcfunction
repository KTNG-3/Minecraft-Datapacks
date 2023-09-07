execute store result score @s ing_Item.Inventory_Torch_Count run data get entity @s Inventory[{id:"minecraft:torch",Slot:-106b}].Count

execute unless score @s ing_Item.Inventory_Torch_Count matches 64 run function ing_item:project/torch/replace