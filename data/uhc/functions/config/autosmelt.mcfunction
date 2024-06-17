execute as @e[type=item,nbt={Item: {id: "minecraft:copper_ore"}}] at @s run summon experience_orb
execute as @e[type=item,nbt={Item: {id: "minecraft:copper_ore"}}] run data modify entity @s Item.id set value "minecraft:copper_ingot"

execute as @e[type=item,nbt={Item: {id: "minecraft:gold_ore"}}] at @s run summon experience_orb
execute as @e[type=item,nbt={Item: {id: "minecraft:gold_ore"}}] run data modify entity @s Item.id set value "minecraft:gold_ingot"

execute as @e[type=item,nbt={Item: {id: "minecraft:iron_ore"}}] at @s run summon experience_orb
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_ore"}}] run data modify entity @s Item.id set value "minecraft:iron_ingot"

execute as @e[type=item,nbt={Item: {id: "minecraft:deepslate_gold_ore"}}] at @s run summon experience_orb
execute as @e[type=item,nbt={Item: {id: "minecraft:deepslate_gold_ore"}}] run data modify entity @s Item.id set value "minecraft:gold_ingot"

execute as @e[type=item,nbt={Item: {id: "minecraft:deepslate_iron_ore"}}] at @s run summon experience_orb
execute as @e[type=item,nbt={Item: {id: "minecraft:deepslate_iron_ore"}}] run data modify entity @s Item.id set value "minecraft:iron_ingot"

execute as @e[type=item,nbt={Item: {id: "minecraft:deepslat_copper_ore"}}] at @s run summon experience_orb
execute as @e[type=item,nbt={Item: {id: "minecraft:deepslate_copper_ore"}}] run data modify entity @s Item.id set value "minecraft:copper_ingot"


execute as @e[type=item,nbt={Item: {id: "minecraft:raw_iron_block"}}] run data modify entity @s Item.id set value "minecraft:iron_block"
execute as @e[type=item,nbt={Item: {id: "minecraft:raw_gold_block"}}] run data modify entity @s Item.id set value "minecraft:gold_block"
execute as @e[type=item,nbt={Item: {id: "minecraft:raw_copper_block"}}] run data modify entity @s Item.id set value "minecraft:copper_block"