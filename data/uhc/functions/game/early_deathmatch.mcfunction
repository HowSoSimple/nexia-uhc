schedule clear uhc:game/deathmatch
schedule clear uhc:not/dm_25
schedule clear uhc:not/dm_15
schedule clear uhc:not/dm_10
schedule clear uhc:not/dm_5
schedule clear uhc:not/dm_2_5
schedule clear uhc:not/dm_1
schedule clear uhc:not/dm_0_5
# 5 remain
function uhc:not/dm_5
# 2 1/2 remain
schedule function uhc:not/dm_2_5 150s
# 1 remain
schedule function uhc:not/dm_1 240s
# 1/2 remain
schedule function uhc:not/dm_0_5 270s
schedule function uhc:game/deathmatch 300s