# 命名：warn_start
# 説明：飛び出す前の予告を始める（20 tick。後半は 15、連続突き上げのあいだは 10）
# 実行条件：実行者 本体（狙いの真下の地中）
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/warn_start

# 内容
data modify storage neofunction:rubra worm.state set value "warn"
data modify storage neofunction:rubra worm.t set value 20
execute if data storage neofunction:rubra worm{phase:2} run data modify storage neofunction:rubra worm.t set value 15
execute unless data storage neofunction:rubra worm{combo:0} run data modify storage neofunction:rubra worm.t set value 10
execute at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @a[distance=..48] ~ -40 ~ 1.2 0.5
