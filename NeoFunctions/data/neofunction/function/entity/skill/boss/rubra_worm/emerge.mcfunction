# 命名：emerge
# 説明：床を割って飛び出す：てっぺん（worm.next の p）へ。
# 実行条件：実行者・実行位置 本体（地中）
# >/function neofunction:entity/skill/boss/rubra_worm/warn
# =/function neofunction:entity/skill/boss/rubra_worm/emerge

# 内容
data modify storage neofunction:rubra worm.state set value "up"
function neofunction:entity/skill/boss/rubra_worm/goal_p with storage neofunction:rubra worm.next
playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ -38 ~ 2 0.5
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ -38 ~ 1 0.6
execute positioned ~ -40 ~ run particle minecraft:block{block_state:"minecraft:deepslate"} ~ ~ ~ 1.5 0.5 1.5 0 60 normal
