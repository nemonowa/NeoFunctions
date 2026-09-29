# 命名：239
# 説明：百獣共鳴【ビースト・ロード】
# >
# =/function neofunction:asset/skill/239

# 内容
# 周囲32m以内の自身の使い魔全体を一斉強化し、最寄りの敵の方を向かせて号令する（攻撃自体はvanillaAI任せ）。
# 効果時間中(20秒)は絶大な火力を発揮する代わりに、効果終了時に強化対象の使い魔は全て消滅する使い捨て仕様。

execute as @e[tag=familiar,distance=..32] run tag @s add beastlordActive

# 【変更：2026-09-12 効果時間をレベル依存に変更。習得Lv40を基準に、5レベル毎に+5秒
#   （20+((LVL-40)/5切り捨て)×5秒）。effectの秒数はコマンド引数なのでレベル範囲分岐で対応】
execute if score @s LVL matches 40..44 as @e[tag=beastlordActive] run effect give @s minecraft:strength 20 3 true
execute if score @s LVL matches 40..44 as @e[tag=beastlordActive] run effect give @s minecraft:speed 20 2 true
execute if score @s LVL matches 40..44 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 20 2 true
execute if score @s LVL matches 45..49 as @e[tag=beastlordActive] run effect give @s minecraft:strength 25 3 true
execute if score @s LVL matches 45..49 as @e[tag=beastlordActive] run effect give @s minecraft:speed 25 2 true
execute if score @s LVL matches 45..49 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 25 2 true
execute if score @s LVL matches 50..54 as @e[tag=beastlordActive] run effect give @s minecraft:strength 30 3 true
execute if score @s LVL matches 50..54 as @e[tag=beastlordActive] run effect give @s minecraft:speed 30 2 true
execute if score @s LVL matches 50..54 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 30 2 true
execute if score @s LVL matches 55..59 as @e[tag=beastlordActive] run effect give @s minecraft:strength 35 3 true
execute if score @s LVL matches 55..59 as @e[tag=beastlordActive] run effect give @s minecraft:speed 35 2 true
execute if score @s LVL matches 55..59 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 35 2 true
execute if score @s LVL matches 60..64 as @e[tag=beastlordActive] run effect give @s minecraft:strength 40 3 true
execute if score @s LVL matches 60..64 as @e[tag=beastlordActive] run effect give @s minecraft:speed 40 2 true
execute if score @s LVL matches 60..64 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 40 2 true
execute if score @s LVL matches 65..69 as @e[tag=beastlordActive] run effect give @s minecraft:strength 45 3 true
execute if score @s LVL matches 65..69 as @e[tag=beastlordActive] run effect give @s minecraft:speed 45 2 true
execute if score @s LVL matches 65..69 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 45 2 true
execute if score @s LVL matches 70..74 as @e[tag=beastlordActive] run effect give @s minecraft:strength 50 3 true
execute if score @s LVL matches 70..74 as @e[tag=beastlordActive] run effect give @s minecraft:speed 50 2 true
execute if score @s LVL matches 70..74 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 50 2 true
execute if score @s LVL matches 75..79 as @e[tag=beastlordActive] run effect give @s minecraft:strength 55 3 true
execute if score @s LVL matches 75..79 as @e[tag=beastlordActive] run effect give @s minecraft:speed 55 2 true
execute if score @s LVL matches 75..79 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 55 2 true
execute if score @s LVL matches 80..84 as @e[tag=beastlordActive] run effect give @s minecraft:strength 60 3 true
execute if score @s LVL matches 80..84 as @e[tag=beastlordActive] run effect give @s minecraft:speed 60 2 true
execute if score @s LVL matches 80..84 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 60 2 true
execute if score @s LVL matches 85..89 as @e[tag=beastlordActive] run effect give @s minecraft:strength 65 3 true
execute if score @s LVL matches 85..89 as @e[tag=beastlordActive] run effect give @s minecraft:speed 65 2 true
execute if score @s LVL matches 85..89 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 65 2 true
execute if score @s LVL matches 90..94 as @e[tag=beastlordActive] run effect give @s minecraft:strength 70 3 true
execute if score @s LVL matches 90..94 as @e[tag=beastlordActive] run effect give @s minecraft:speed 70 2 true
execute if score @s LVL matches 90..94 as @e[tag=beastlordActive] run effect give @s minecraft:resistance 70 2 true
execute if score @s LVL matches 95.. as @e[tag=beastlordActive] run effect give @s minecraft:strength 75 3 true
execute if score @s LVL matches 95.. as @e[tag=beastlordActive] run effect give @s minecraft:speed 75 2 true
execute if score @s LVL matches 95.. as @e[tag=beastlordActive] run effect give @s minecraft:resistance 75 2 true

execute as @e[tag=beastlordActive] at @s if entity @e[tag=enemy,distance=..32] run tp @s ~ ~ ~ facing entity @e[tag=enemy,distance=..32,limit=1,sort=nearest] eyes

# 【変更：2026-09-12 消滅処理をポータルクールダウン式に統一。schedule+killからPortalCooldown上書きに切替。
#   強化対象は元々232〜235でPortalCooldown≠0を持って召喚済み＝portalcooldownタグ保持済みなので、
#   計算値へ上書きするだけで共通デスポーン処理（entity/tick）に回収される。
#   持続時間はeffectと同じ式（20+((LVL-40)/5切り捨て)×5秒）をtemp一時計算値で算出しtickへ変換】
scoreboard players operation #beastlordDur temp = @s LVL
scoreboard players remove #beastlordDur temp 40
scoreboard players set #beastlordDiv temp 5
scoreboard players operation #beastlordDur temp /= #beastlordDiv temp
scoreboard players operation #beastlordDur temp *= #beastlordDiv temp
scoreboard players add #beastlordDur temp 20
scoreboard players set #beastlordTickMul temp 20
scoreboard players operation #beastlordDur temp *= #beastlordTickMul temp
execute as @e[tag=beastlordActive] store result entity @s PortalCooldown int 1 run scoreboard players get #beastlordDur temp

# 演出
playsound entity.wither.spawn record @a[distance=..24] ~ ~ ~ 1.0 1.3
particle minecraft:flame ~ ~1 ~ 1 1 1 0.05 200 force

# SP消費：100SP消費
scoreboard players remove @s SP 100

# クールタイム
# scoreboard players add @s CT 20
