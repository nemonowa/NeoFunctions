# 命名：crash
# 説明：突進の頭が柱か壁にぶつかった：柱なら柱にひび（3 回で崩れる、pillar_hit）。スタンする（stun_start）
# 実行条件：実行者 本体。実行位置 ぶつかった所
# >/function neofunction:entity/skill/boss/rubra_worm/charge_tick
# =/function neofunction:entity/skill/boss/rubra_worm/crash

# 内容
execute as @e[type=marker,tag=rubra_wpillar,distance=..3.5,sort=nearest,limit=1] at @s run function neofunction:entity/skill/boss/rubra_worm/pillar_hit
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 3 normal
execute as @e[type=ravager,tag=rubra_worm,limit=1] at @s run function neofunction:entity/skill/boss/rubra_worm/stun_start
