# 命名：237
# 説明：鼓舞【クイック・エンハンス】
# >
# =/function neofunction:asset/skill/237

# 内容
# 周囲8m以内のプレイヤーと、周囲16m以内の使い魔全体に攻撃・移動の強化を付与する。
# 強化中は視認しやすいよう発光させ、チームをdark_redへ一時移動（強化の証）。
# 発光が切れたタイミングでtamer/quickenhance_tickがチームをwhiteへ戻す。

function neofunction:asset/skill/tamer/ensure_darkred_team

effect give @a[distance=..8] minecraft:haste 15 1 true
effect give @a[distance=..8] minecraft:speed 15 1 true
effect give @a[distance=..8] minecraft:glowing 15 0 true
effect give @e[tag=familiar,distance=..16] minecraft:speed 15 1 true
effect give @e[tag=familiar,distance=..16] minecraft:strength 15 0 true
effect give @e[tag=familiar,distance=..16] minecraft:glowing 15 0 true

tag @a[distance=..8] add quickEnhanceBuffed
tag @e[tag=familiar,distance=..16] add quickEnhanceBuffed
team join dark_red @a[distance=..8]
team join dark_red @e[tag=familiar,distance=..16]

execute unless entity @e[tag=tamerQuickEnhanceLoopRunning] run function neofunction:asset/skill/tamer/quickenhance_start

# 演出
playsound entity.wolf.howl record @a[distance=..16] ~ ~ ~ 1.0 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.05 30 force

# SP消費：30SP消費
scoreboard players remove @s SP 30
