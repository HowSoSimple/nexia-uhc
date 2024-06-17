execute at @a as @a run tellraw @s[y=-64,dy=112,team=PvP,scores={sickness=1}] {"text":"§l§cReturn to surface of overworld within 5 minutes or you will die."}
execute at @a as @a run playsound minecraft:entity.arrow.hit_player master @s[y=-64,dy=112,team=PvP,scores={sickness=1}]
execute at @a as @a run tellraw @s[y=-64,dy=112,team=PvP,scores={sickness=3000}] {"text":"§l§cReturn to surface of overworld within 2.5 minutes or you will die."}
execute at @a as @a run tellraw @s[y=-64,dy=112,team=PvP,scores={sickness=4800}] {"text":"§l§cReturn to surface of overworld within 1 minute or you will die."}
execute at @a as @a run effect give @s[y=-64,dy=112,team=PvP,scores={sickness=6000..}] minecraft:wither 10 0 true