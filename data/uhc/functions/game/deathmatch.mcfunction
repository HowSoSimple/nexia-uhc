execute as @a[tag=!Dead] at @s run tp 0 ~ 0
#fill -54 276 -56 56 276 54 minecraft:air
effect give @a[team=!Dead] minecraft:glowing infinite 0 true 
#setblock -54 255 -56 structure_block{name:"uhc:deathmatch",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
#setblock -54 254 -56 minecraft:redstone_block
scoreboard players set dm info 1

worldborder center 1.0 -1.0
worldborder damage amount 1
worldborder damage buffer 5
worldborder warning distance 0

title @a title {"text":"Deathmatch","color":"#FF292C"}
title @a subtitle {"text":"has begun","color":"#CECECE"}
tellraw @a ["",{"text":"Deathmatch ","color":"#FF292C"},{"text":"has begun","color":"#CECECE"}]

execute as @a at @s run playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 1 1

effect give @a blindness 5 255 true
effect give @a slowness 5 255 true
effect give @a jump_boost 5 250 true

schedule function uhc:game/deathmatch1 20t replace