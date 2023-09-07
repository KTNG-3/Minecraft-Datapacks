# off-hand
execute store success score @s ing_Item.Inventory_Torch_Test run data get entity @s Inventory[{id:"minecraft:torch",Slot:-106b}]
execute if score @s ing_Item.Inventory_Torch_Test matches 1 run function ing_item:project/torch/count

# main-hand
scoreboard players set @s ing_Item.Inventory_Torch_Slot 0
execute if entity @s[nbt={SelectedItemSlot:0}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:0b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:0}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:0b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:1}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:1b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:2}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:2b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:3}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:3b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:4}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:4b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:5}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:5b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:6}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:6b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:7}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:7b}]
execute if score @s ing_Item.Inventory_Torch_Slot matches 0 if entity @s[nbt={SelectedItemSlot:8}] run execute store success score @s ing_Item.Inventory_Torch_Slot run data get entity @s Inventory[{id:"minecraft:torch",Slot:8b}]

execute if score @s ing_Item.Inventory_Torch_Test matches 1 if score @s ing_Item.Inventory_Torch_Slot matches 0 if score @s ing_Item.Inventory_Torch matches 1.. run function ing_item:project/torch/start