# 命名：ゴリラ・ゴリラ・ゴリラ
# 説明：存在解析処理
# 実行条件：アンカーポイントを本で解析したときの処理
# >/function neofunction:asset/skill/2/.neo
# =/function neofunction:asset/skill/2/anchor


# 通知
tellraw @a[distance=..8,tag=skill2] [{"text":"解析対象は"},{"text":"アンカーポイント","color":"dark_aqua","underlined":true,"bold":true,hover_event:{"action":"show_text","value":[{"text":"ノーチラス観測錨を降ろすのに適した特殊な座標。座標をマークし、ポスアンカーを配置することで自由にネクサスへの行き来が可能になる。地脈や星辰の条件の揃う特殊な目標地点。"}]}},{"text":"です。"}]
tellraw @a[distance=..8,tag=skill2] [{"text":">>> アンカーの配置を試行します >>>"}]

# 接続失敗
execute as @e[tag=enemy,distance=..8] run title @a[distance=..8,tag=skill2] subtitle [{"text":"= ⚓ MissingLink ⚓ =","color":"red","bold":true}]
execute as @e[tag=enemy,distance=..8] run title @a[distance=..8,tag=skill2] title [{"text":"接続失敗","color":"red","bold":true}]
execute as @e[tag=enemy,distance=..8,limit=1] run tellraw @a[distance=..8,tag=skill2] {"text":"解析値：付近に敵対エンティティが存在するためポスアンカーの配置に失敗。","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ポスアンカー【ノーチラス観測錨】は存在確率に干渉する装置であり、地脈や星辰の条件の揃う特殊な座標【アンカーポイント】で、周囲に敵対エンティティやスポナーがない環境でのみ、存在確率を希釈して共振転移が可能。"}]}}
execute as @e[tag=enemy,distance=..8] run effect give @s minecraft:glowing 9 0
execute as @e[tag=enemy,distance=..8] run return 1

execute as @e[type=spawner_minecart,distance=..16] run title @a[distance=..16,tag=skill2] subtitle [{"text":"= ⚓ MissingLink ⚓ =","color":"red","bold":true}]
execute as @e[type=spawner_minecart,distance=..16] run title @a[distance=..16,tag=skill2] title [{"text":"接続失敗","color":"red","bold":true}]
execute as @e[type=spawner_minecart,distance=..16,limit=1] run tellraw @a[distance=..16,tag=skill2] {"text":"解析値：付近にスポナーが存在するためポスアンカーの配置に失敗。","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ポスアンカー【ノーチラス観測錨】は存在確率に干渉する装置であり、地脈や星辰の条件の揃う特殊な座標【アンカーポイント】で、周囲に敵対エンティティやスポナーがない環境でのみ、存在確率を希釈して共振転移が可能。"}]}}
execute as @e[type=spawner_minecart,distance=..16] at @s run effect give @e[distance=..0.5] glowing 9 0
execute as @e[type=spawner_minecart,distance=..16] run return 1

# 接続成功
playsound minecraft:ui.toast.challenge_complete record @a[distance=..12,tag=skill2] ~ ~ ~ 1 0.8 1
tellraw @a[distance=..12,tag=skill2] {"text":"解析値：ポスアンカーの配置に成功！","color":"dark_aqua","bold":true,"italic":false}
tellraw @a[distance=..12,tag=skill2] [{"text":"航海記(keybind-"},{"keybind":"key.advancements","color":"dark_aqua","bold":true},{"text":")に座標情報が記録されNEXUSとの巡航が可能となりました。"}]

# 攻略時間表示処理
tellraw @a[distance=..8,tag=skill2] [{"text":"座標名："},{"selector":"@s"}]
execute store result score survival temp run time query gametime
function neofunction:system/scoreboard/time
tellraw @a[distance=..12,tag=skill2] [{"text":"* 攻略時間 ","color":"yellow","bold":true,"italic":false,"underlined":true},{"score":{"name":"second","objective":"temp"}},{"text":"時間"},{"score":{"name":"minute","objective":"temp"}},{"text":"分"},{"score":{"name":"survival","objective":"temp"}},{"text":"秒"}]

# data merge entity @s {Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,180f,90f]},equipment:{mainhand:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":{floats:[156.0f]},"minecraft:enchantments":{"minecraft:infinity":1}}},offhand:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":{floats:[156.0f]},"minecraft:enchantments":{"minecraft:infinity":1}}}}}

# マクロにした
function neofunction:asset/nbt/for_in_range {Min:1,Max:513,Function:"neofunction:asset/skill/2/anchor_for"}

# 解析達成率（タイトル／サブタイトル表示）
# 【追加：2026-09-20】
# @s はアンカー側なので、解析したプレイヤーのスコアを拾い直す。
# for_in_range で進捗を配った後なので、今回ぶんを含んだ個数になる。
scoreboard players set #anchor_now temp 0
scoreboard players operation #anchor_now temp = @p[distance=..12,tag=skill2] logAnchor
# 千分率にしてから10で割る＝小数第1位まで整数演算だけで出す
scoreboard players set #anchor_max temp 31
scoreboard players set #anchor_k temp 1000
scoreboard players set #anchor_d temp 10
scoreboard players operation #anchor_per temp = #anchor_now temp
scoreboard players operation #anchor_per temp *= #anchor_k temp
scoreboard players operation #anchor_per temp /= #anchor_max temp
scoreboard players operation #anchor_int temp = #anchor_per temp
scoreboard players operation #anchor_int temp /= #anchor_d temp
scoreboard players operation #anchor_dec temp = #anchor_per temp
scoreboard players operation #anchor_dec temp %= #anchor_d temp

# subtitle は title より先に指定しないと反映されないのでこの順
title @a[distance=..12,tag=skill2] subtitle [{"text":"解析率：","color":"white"},{"score":{"name":"#anchor_int","objective":"temp"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#anchor_dec","objective":"temp"},"color":"white"},{"text":"% ","color":"white"},{"score":{"name":"#anchor_now","objective":"temp"},"color":"white"},{"text":"/31","color":"white"}]
title @a[distance=..12,tag=skill2] title [{"text":"⚓ 目標を攻略した ⚓","color":"dark_aqua","bold":true}]

# 一時値は使い終わりに片付ける
scoreboard players reset #anchor_now temp
scoreboard players reset #anchor_max temp
scoreboard players reset #anchor_k temp
scoreboard players reset #anchor_d temp
scoreboard players reset #anchor_per temp
scoreboard players reset #anchor_int temp
scoreboard players reset #anchor_dec temp


# アンカー個別処理
execute as @s[tag=pos121] at @s run tellraw @a[distance=..16] {"translate":"ぬめぬめしていて、これ以上は進めそうにない……。商会長のニールなら、この先の進路について何か知っているかもしれない...。","bold":true,"color":"dark_gray"}
execute as @s[tag=pos122] at @s run tellraw @a[distance=..16] {"translate":"ぬめぬめしていて、これ以上は進めそうにない……。カエルトカース＋なら、この封印を解けるかもしれない、クラウスに聞いてみよう。","bold":true,"color":"dark_gray"}