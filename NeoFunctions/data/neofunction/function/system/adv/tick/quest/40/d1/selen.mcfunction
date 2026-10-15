# 命名：selen
# 説明：仮面を外したセレンの背中：空洞の西に現れ、西の横穴へ歩いて消える（selen_walk）。横穴はそのあと崩れる
# 説明：見た目はマネキン（外套と白い仮面の代わりにスケルトンの頭）。一度だけ
# 実行条件：実行者 プレイヤー（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d1/416（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/selen

# 内容
execute if data storage neofunction:rubra d1{selen:1b} run return 0
data modify storage neofunction:rubra d1.selen set value 1b
execute in neodimension:ceresta_festa run summon mannequin 790.5 -39 3268.5 {Rotation:[90.0f,0.0f],Invulnerable:1b,NoGravity:1b,Silent:1b,Tags:["rubra_selen","rubra_d1"],hide_description:1b,immovable:1b,equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3487029}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3487029}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3487029}},mainhand:{id:"minecraft:skeleton_skull",count:1}}}
schedule function neofunction:system/adv/tick/quest/40/d1/selen_walk 30t replace
