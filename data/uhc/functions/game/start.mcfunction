execute as @a run attribute @s minecraft:generic.max_health base set 40
effect give @a instant_health 1 20 true
worldborder center 0.0 0.0
worldborder set 1000
worldborder damage amount 2
worldborder damage buffer 5
worldborder warning distance 20
fill -20 235 -20 20 250 20 air
gamemode survival @a
spreadplayers 0 0 100 500 false @a
scoreboard players set start info 1
scoreboard players set end info 0
scoreboard players set dm info 0
gamerule fallDamage true
gamerule doDaylightCycle false
scoreboard players reset * die
scoreboard players reset * kills
effect give @a blindness 2 255 true
effect give @a slowness 2 255 true
effect give @a jump_boost 2 250 true
execute as @a run function uhc:config/starting_kit
scoreboard players set grace_m info 15
scoreboard players set grace_s info 0
tellraw @a [{"text":"The 15 Minute","color":"#CECECE"},{"text":" Grace Period","color":"gold"},{"text":" has begun!","color":"#CECECE"}]
schedule function uhc:config/cd 1s
schedule function uhc:game/end_grace 900s replace
scoreboard objectives modify hp rendertype integer
effect give @a fire_resistance 900 255 true
effect give @a haste 900 1 true
effect give @a saturation 18000 0 true

effect give @a minecraft:night_vision infinite 255 true