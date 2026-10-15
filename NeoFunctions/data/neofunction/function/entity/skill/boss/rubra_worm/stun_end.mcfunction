# 命名：stun_end
# 説明：スタンが終わった：殻が閉じて（weak_off）、その場から潜る
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/stun_tick
# =/function neofunction:entity/skill/boss/rubra_worm/stun_end

# 内容
function neofunction:entity/skill/boss/rubra_worm/weak_off
playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ ~ ~ 2 0.7
function neofunction:entity/skill/boss/rubra_worm/dive
