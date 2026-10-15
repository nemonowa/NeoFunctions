# 命名：stun_tick
# 説明：気絶のあいだ（毎 tick）：残り時間を減らし、頭の上に光の粒。終わったら stun_end
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/stun_tick

# 内容
execute store result score #rc_st temp run data get storage neofunction:rubra cradle.stun
scoreboard players remove #rc_st temp 1
execute store result storage neofunction:rubra cradle.stun int 1 run scoreboard players get #rc_st temp
particle minecraft:end_rod ~ ~2.2 ~ 0.3 0.1 0.3 0.01 1 normal
execute if score #rc_st temp matches ..0 run function neofunction:entity/skill/boss/rubra_cradle/stun_end
