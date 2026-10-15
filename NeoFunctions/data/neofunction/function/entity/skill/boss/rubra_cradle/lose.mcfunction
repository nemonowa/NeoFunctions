# 命名：lose
# 説明：欠片が 1 つ減った（砕いた・抜いた）：残りの数を 1 減らし、すべて無くなったらセレンが気絶する
# >/function neofunction:entity/skill/boss/rubra_cradle/break
# >/function neofunction:entity/skill/boss/rubra_cradle/extract
# =/function neofunction:entity/skill/boss/rubra_cradle/lose

# 内容
execute store result score #rc_v temp run data get storage neofunction:rubra cradle.left
scoreboard players remove #rc_v temp 1
execute store result storage neofunction:rubra cradle.left int 1 run scoreboard players get #rc_v temp
# 欠片では体力を減らさない。すべて無くなったら守りが解けて気絶する（stun_start）
execute if score #rc_v temp matches ..0 as @e[type=evoker,tag=rubra_eater,limit=1] at @s run function neofunction:entity/skill/boss/rubra_cradle/stun_start
