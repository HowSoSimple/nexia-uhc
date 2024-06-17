team leave @a[team=NoPvP]
worldborder set 400 1800
tellraw @a [{"text":"Grace Period is over!\nThe border will now begin to decrease.\nPvP Enabled!","color":"gold","bold":true},{"text":"\n\nDeathmatch will begin in 30 minutes!","color":"red","bold":true}]
execute as @a at @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 1 1.5
# 15 remain
schedule function uhc:not/dm_10 900s
# 10 remain
schedule function uhc:not/dm_10 1200s
# 5 remain
schedule function uhc:not/dm_5 1500s
# 2 1/2 remain
schedule function uhc:not/dm_2_5 1650s
# 1 remain
schedule function uhc:not/dm_1 1740s
# 1/2 remain
schedule function uhc:not/dm_0_5 1770s


schedule function uhc:game/deathmatch 1800s