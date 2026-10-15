# 命名：arrow_start
# 説明：赤い光の矢の始まり：狙う人の胸の高さに印を置き、0.75 秒（15 tick）のあいだ赤い線で予告する
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/attack
# =/function neofunction:entity/skill/boss/rubra_cradle/arrow_start

# 内容
kill @e[type=marker,tag=rubra_arrow_t]
execute as @a[distance=..30,gamemode=!spectator,sort=random,limit=1] at @s run summon marker ~ ~1 ~ {Tags:["rubra_arrow_t","rubra_cradle_part","rubra_d3"]}
execute unless entity @e[type=marker,tag=rubra_arrow_t] run return 0
data modify storage neofunction:rubra cradle.arrow set value 15
playsound minecraft:entity.evoker.prepare_attack hostile @a[distance=..40] ~ ~ ~ 1.5 1.2
