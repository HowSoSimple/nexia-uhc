#compass
execute at @a[nbt={SelectedItem:{id:"minecraft:compass"}}] run effect give @a[distance=0.1..128] minecraft:glowing 1 0 true
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] run effect give @a[distance=0.1..128] minecraft:glowing 1 0 true

#Extra Features
function uhc:config/apples
#function uhc:config/autosmelt
execute as @a if score @s use_head matches -2147483648..2147483647 run function uhc:config/golden_head

#Tree-capitator
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs
execute as @e[type=item,nbt={Item:{id:"minecraft:mangrove_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs
execute as @e[type=item,nbt={Item:{id:"minecraft:cherry_log"}},nbt={PickupDelay:5s}] at @s run function uhc:config/logs

#Spawn
execute positioned 0 242.5 0 run effect give @a[team=NoPvP,distance=..16] instant_health 1 1 true
execute positioned 0 242.5 0 run effect give @a[team=NoPvP,distance=..16] saturation 1 0 true

#Death
spawnpoint @a 0 240 0
execute positioned 0 242.5 0 run team join Dead @a[distance=..16,scores={die=-2147483648..2147483647}]
execute positioned 0 242.5 0 run team join NoPvP @a[distance=..16,team=!Dead]
gamemode spectator @a[team=Dead]
execute as @a[distance=..16,team=Dead] run tp @s @p[team=!Dead]

#Early Deathmatch
scoreboard players set living info 0
execute as @a[team=!Dead] run scoreboard players add living info 1
execute if score dm info matches 0 if score start info matches 1 if score living info matches ..2 if score grace_m info matches ..0 if score grace_s info matches ..0 run schedule function uhc:game/early_deathmatch 60s

#End
execute if score end info matches 0 if score start info matches 1 if score living info matches 1 as @p[team=!Dead] run tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is the winner!","bold":true,"color":"gold"}]
execute if score end info matches 0 if score start info matches 1 if score living info matches 1 as @p[team=!Dead] run title @a title ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is the winner!","bold":true,"color":"gold"}]
execute if score end info matches 0 if score start info matches 1 if score living info matches 1 run scoreboard players set end info 1
execute if score end info matches 0 if score start info matches 1 if score living info matches 1 run execute as @a[team=Dead] run spectate @p[team=!Dead]

#Info Display
execute store result score border info run worldborder get
scoreboard players operation width info = border info
scoreboard players operation border info /= num_2 info
execute as @a if score start info matches 1 if score grace_m info matches 0.. if score grace_s info matches 0.. if score grace_s info matches ..9 run title @s actionbar [{"text":"§e⌛"},{"score":{"name":"grace_m","objective":"info"}},{"text":":0"},{"score":{"name":"grace_s","objective":"info"}},{"text":"   §6🗡"},{"score":{"name":"@s","objective":"kills"}},{"text":"   §c❤"},{"score":{"name":"living","objective":"info"}}]
execute as @a if score start info matches 1 if score grace_m info matches 0.. if score grace_s info matches 0.. unless score grace_s info matches ..9 run title @s actionbar [{"text":"§e⌛"},{"score":{"name":"grace_m","objective":"info"}},{"text":":"},{"score":{"name":"grace_s","objective":"info"}},{"text":"   §6🗡"},{"score":{"name":"@s","objective":"kills"}},{"text":"   §c❤"},{"score":{"name":"living","objective":"info"}}]
execute as @a if score start info matches 1 if score grace_m info matches ..-1 run title @s actionbar [{"text":"§3☲"},{"score":{"name":"width","objective":"info"}},{"text":" §3(§r-§3"},{"score":{"name":"border","objective":"info"}},{"text":"§3,+"},{"score":{"name":"border","objective":"info"}},{"text":"§3)   §6🗡"},{"score":{"name":"@s","objective":"kills"}},{"text":"   §c❤"},{"score":{"name":"living","objective":"info"}}]
execute as @a if score start info matches 1 if score dm info matches 1.. run title @s actionbar [{"text":"§6🗡"},{"score":{"name":"@s","objective":"kills"}},{"text":"   §c❤"},{"score":{"name":"living","objective":"info"}}]
scoreboard players add @a kills 0

#Grace Period Effects
effect give @a minecraft:night_vision infinite 0 true

#Head but better
execute as @a[team=!Dead] run gamemode survival @s[gamemode=!creative,gamemode=!spectator]
execute as @a[nbt={SelectedItem:{id:"minecraft:player_head"}}] run gamemode adventure @s
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:player_head"}]}] run gamemode adventure @s

#Sickness
#scoreboard players remove @a sickness 1

#execute as @a store result score @s Height run data get entity @s Pos[1]
#execute in minecraft:overworld as @a[distance=0..,scores={Height=..48},team=PvP] run scoreboard players add @s sickness 2
#execute in minecraft:the_nether run execute as @a[distance=0..,team=PvP] run scoreboard players add @s sickness 2
#execute in minecraft:the_end run execute as @a[distance=0..,team=PvP] run scoreboard players add @s sickness 2

#execute if entity @a[scores={sickness=1..}] in minecraft:overworld run function uhc:game/sickness1
#execute if entity @a[scores={sickness=1..}] in minecraft:the_nether run function uhc:game/sickness2
#execute if entity @a[scores={sickness=1..}] in minecraft:the_end run function uhc:game/sickness3

#scoreboard players set @a[scores={sickness=..0}] sickness 0
#scoreboard players set @a[scores={sickness=6000..}] sickness 6000
#scoreboard players set @a second 60
#execute as @a run scoreboard players operation @s sickness_time = @s sickness
#execute as @a run scoreboard players operation @s sickness_time /= @s second