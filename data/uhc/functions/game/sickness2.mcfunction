execute in minecraft:the_nether run tellraw @a[distance=0..,team=PvP,scores={sickness=1}] {"text":"§l§cReturn to surface of overworld within 5 minutes or you will die."}
execute in minecraft:the_nether run playsound minecraft:entity.arrow.hit_player master @a[distance=0..,team=PvP,scores={sickness=1}]
execute in minecraft:the_nether run tellraw @a[distance=0..,team=PvP,scores={sickness=3000}] {"text":"§l§cReturn to surface of overworld within 2.5 minutes or you will die."}
execute in minecraft:the_nether run tellraw @a[distance=0..,team=PvP,scores={sickness=4800}] {"text":"§l§cReturn to surface of overworld within 1 minute or you will die."}
execute in minecraft:the_nether run effect give @a[distance=0..,team=PvP,scores={sickness=6000..}] minecraft:wither 10 0 true