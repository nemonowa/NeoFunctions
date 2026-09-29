# 命名：252
# 説明：影打ち【シャドウ・ストライク】
#        リワーク：奇襲体勢中は対象認識判定を無視して確定発動。
#        命中時、対象に呪印を付与する（254・259の起爆用の起点技になる）
# >
# =/function neofunction:asset/skill/252


# 習得するスキルセット
# 攻撃対象が自身に敵対していたら不発。ただし奇襲体勢中はこの判定を無視して確定発動する
execute unless entity @s[tag=ambush] as @e[tag=enemy,distance=..5,limit=1,sort=nearest] on target if entity @s[advancements={neoadvancement:neoskill/250=true}] run return 0

# ダメージ
execute as @s[scores={LVL=5..29}] as @e[tag=enemy,distance=..5,limit=1,sort=nearest] run damage @s 30 minecraft:generic by @p
execute as @s[scores={LVL=30..49}] as @e[tag=enemy,distance=..5,limit=1,sort=nearest] run damage @s 60 minecraft:generic by @p
execute as @s[scores={LVL=50..69}] as @e[tag=enemy,distance=..5,limit=1,sort=nearest] run damage @s 120 minecraft:generic by @p
execute as @s[scores={LVL=70..89}] as @e[tag=enemy,distance=..5,limit=1,sort=nearest] run damage @s 240 minecraft:generic by @p
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=..5,limit=1,sort=nearest] run damage @s 480 minecraft:generic by @p

# リワーク：命中対象に呪印を付与
execute as @e[tag=enemy,distance=..5,limit=1,sort=nearest] run function neofunction:asset/skill/mark_apply

# リワーク：奇襲体勢を消費（付与されていなければ何も起きない）
tag @s remove ambush

# 演出
execute if entity @e[tag=enemy,distance=..5] run playsound entity.warden.attack_impact record @s ~ ~ ~ 1.0 0.8

scoreboard players remove @s SP 15
