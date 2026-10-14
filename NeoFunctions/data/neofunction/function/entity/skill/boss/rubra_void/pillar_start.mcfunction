# 命名：pillar_start
# 説明：【追加：2026-10-09 ルブラ編】黒い水の柱の始まり：近くの人（4 人まで）の足もとに目印。1.5 秒の予告のあと噴き上がる
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack
# >/function neofunction:entity/skill/boss/rubra_void/attack3
# >/function neofunction:entity/skill/boss/rubra_void/drip
# =/function neofunction:entity/skill/boss/rubra_void/pillar_start

# 内容
data modify storage neofunction:rubra fin merge value {a:1,c:30}
execute as @a[distance=..96,gamemode=!spectator,sort=random,limit=4] at @s run summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark"]}
playsound minecraft:entity.drowned.shoot hostile @a[distance=..128] ~ ~ ~ 3 0.5
