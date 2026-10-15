# 命名：whip_start
# 説明：黒い水の鞭の始まり：狙う人の足もとに印を置き、1 秒（20 tick）のあいだ地面に黒い線で予告する
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/attack
# =/function neofunction:entity/skill/boss/rubra_keeper/whip_start

# 内容
kill @e[type=marker,tag=rubra_whip_t]
execute as @a[distance=..24,gamemode=!spectator,sort=random,limit=1] at @s run summon marker ~ ~ ~ {Tags:["rubra_whip_t","rubra_keeper_part","rubra_d2"]}
execute unless entity @e[type=marker,tag=rubra_whip_t] run return 0
data modify storage neofunction:rubra keeper.whipt set value 20
playsound minecraft:entity.guardian.attack hostile @a[distance=..48] ~ ~3 ~ 1.5 0.5
