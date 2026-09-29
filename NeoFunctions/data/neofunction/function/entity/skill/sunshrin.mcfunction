# 命名：sunshrine
# 説明：太陽の神殿のギミック
# >/function neofunction:entity/skill/clock/5s
# =/function neofunction:entity/skill/sunshrin
fill 269 44 1961 259 41 1971 air replace minecraft:yellow_stained_glass
playsound minecraft:block.glass.break record @a[distance=..64] ~ ~ ~ 2.0 0.5
playsound minecraft:block.glass.break record @a[distance=..64] ~ ~ ~ 2.0 0.5
playsound minecraft:block.glass.break record @a[distance=..64] ~ ~ ~ 2.0 0.5
playsound minecraft:block.glass.break record @a[distance=..64] ~ ~ ~ 2.0 0.5
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.6 1.5
tellraw @a [{"text":"☀ ============================ ☀\n","color":"gold","bold":true},{"text":"　　太　陽　神　殿　開　放\n","color":"yellow","bold":true},{"text":"すべての守護者は光に還り、\n","color":"gold","bold":true},{"text":"神殿の奥底へと続く道が姿を現す…\n","color":"gray","bold":true},{"text":"☀ ============================ ☀","color":"gold","bold":true}]
kill @s