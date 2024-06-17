#Bootup Message
tellraw @a [{"text":"§6§lNexia UHC Datapack§r"},{"text":"\n§bVersion: 1.1.0"},{"text":"\n§aMinecraft: 24w14a"}]

#World Setup
scoreboard players set @a sickness 0
fill -15 250 -15 15 235 15 barrier hollow
setworldspawn 0 240 0
worldborder set 1000
time set noon
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule spectatorsGenerateChunks false
gamerule spawnChunkRadius 8

#idk what mod these are from but its preventing the datapack from loading.
#gamerule maxPlayerDeathItemAge 1200
#gamerule maxPlayerThrownItemAge 2400

worldborder center 0.0 0.0

gamerule naturalRegeneration false
difficulty hard 

#Player Setup
function uhc:config/teams
tp @a 0 240 0
spawnpoint @a 0 240 0
gamemode survival @a
clear @a
xp set @a 0 levels
xp set @a 0 points
team join NoPvP @a

#Scoreboard Setup
scoreboard objectives add hp health
scoreboard objectives modify hp rendertype integer
scoreboard objectives modify hp displayname {"text":"❤","color":"red"}
scoreboard objectives setdisplay list hp
scoreboard objectives setdisplay below_name hp
scoreboard objectives add info dummy
scoreboard objectives add die deathCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add sickness dummy
scoreboard objectives add sickness_time dummy
scoreboard objectives add second dummy
scoreboard players reset *
scoreboard players set start info 0
scoreboard players set end info 0
scoreboard players set dm info 0
scoreboard players set num_2 info 2

scoreboard objectives add Height dummy

#These are only here because for some reason they don't automatically cancel when the datapack gets reloaded.
schedule clear uhc:game/deathmatch
schedule clear uhc:not/dm_25
schedule clear uhc:not/dm_15
schedule clear uhc:not/dm_10
schedule clear uhc:not/dm_5
schedule clear uhc:not/dm_2_5
schedule clear uhc:not/dm_1
schedule clear uhc:not/dm_0_5