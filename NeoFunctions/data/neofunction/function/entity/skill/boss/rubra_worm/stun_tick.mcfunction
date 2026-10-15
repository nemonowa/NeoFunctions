# 命名：stun_tick
# 説明：スタンのあいだ（毎 tick）：頭のまわりに星が回る。数え終わったら起き上がる（stun_end）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/stun_tick

# 内容
particle minecraft:dust{color:[1.0,0.85,0.3],scale:1.0} ~ ~2.8 ~ 0.6 0.1 0.6 0 3 normal
execute store result score #rubra_t temp run data get storage neofunction:rubra worm.t
scoreboard players remove #rubra_t temp 1
execute store result storage neofunction:rubra worm.t int 1 run scoreboard players get #rubra_t temp
execute if score #rubra_t temp matches 20 run playsound minecraft:entity.ravager.ambient hostile @a[distance=..64] ~ ~ ~ 2 0.6
execute if score #rubra_t temp matches ..0 run function neofunction:entity/skill/boss/rubra_worm/stun_end
