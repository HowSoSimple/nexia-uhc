execute if score grace_s info matches 0 run scoreboard players remove grace_m info 1
execute if score grace_s info matches 0 run scoreboard players set grace_s info 60
scoreboard players remove grace_s info 1

execute as @a at @s if score grace_m info matches 10 if score grace_s info matches 0 run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 0.5
execute if score grace_m info matches 10 if score grace_s info matches 0 run tellraw @a {"text":"§6§l10 minutes of grace period remaining"}
execute if score grace_m info matches 10 if score grace_s info matches 0 run function uhc:game/heal

execute as @a at @s if score grace_m info matches 5 if score grace_s info matches 0 run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 0.5
execute if score grace_m info matches 5 if score grace_s info matches 0 run tellraw @a {"text":"§6§l5 minutes of grace period remaining"}
execute if score grace_m info matches 5 if score grace_s info matches 0 run function uhc:game/heal

execute as @a at @s if score grace_m info matches 2 if score grace_s info matches 0 run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 0.5
execute if score grace_m info matches 2 if score grace_s info matches 30 run tellraw @a {"text":"§6§l2 and half minutes of grace period remaining"}

execute as @a at @s if score grace_m info matches 1 if score grace_s info matches 0 run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 0.5
execute if score grace_m info matches 1 if score grace_s info matches 0 run tellraw @a {"text":"§6§l1 minute of grace period remains!"}

execute as @a at @s if score grace_m info matches 0 if score grace_s info matches 0 run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 1 2
execute if score grace_m info matches 0 if score grace_s info matches 0 run function uhc:game/heal

execute if score grace_m info matches 0.. if score grace_s info matches 0.. run schedule function uhc:config/cd 1s