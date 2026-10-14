# 命名：stun_start
# 説明：【追加：2026-10-14 ルブラ編】スタン：頭が床に落ち、6 秒（後半 5 秒）動かない。全節が弱って赤くひび割れ、攻撃が通る（weak_on）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/crash
# =/function neofunction:entity/skill/boss/rubra_worm/stun_start

# 内容
data modify storage neofunction:rubra worm.state set value "stun"
data modify storage neofunction:rubra worm.t set value 120
execute if data storage neofunction:rubra worm{phase:2} run data modify storage neofunction:rubra worm.t set value 100
tp @s ~ -40 ~
function neofunction:entity/skill/boss/rubra_worm/weak_on
playsound minecraft:entity.ravager.stunned hostile @a[distance=..64] ~ ~ ~ 3 0.6
playsound minecraft:block.anvil.land hostile @a[distance=..64] ~ ~ ~ 2 0.5
particle minecraft:explosion ~ ~1 ~ 1 0.5 1 0 4 normal
particle minecraft:block{block_state:"minecraft:blackstone"} ~ ~1 ~ 1.5 1 1.5 0 80 normal
tellraw @a[distance=..64] {"text":"ソウルイーターが頭を打ちつけ、地に崩れ落ちた。黒い殻に、赤いひびが走る――","color":"#FF8C6B","italic":true}
