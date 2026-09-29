# 命名：ゴリラ・ゴリラ・ゴリラ
# 説明：存在解析処理
# 実行条件：アンカーポイントを本で解析したときの処理
# >/function neofunction:asset/skill/2/.neo
# =/function neofunction:asset/skill/2/tutorial_anchor

#チュートリアルアンカーの失敗処理は削除したぞ！
# 通知
tellraw @a[distance=..8,tag=skill2] [{"text":"解析対象は"},{"text":"アンカーポイント","color":"dark_aqua","underlined":true,"bold":true,hover_event:{"action":"show_text","value":[{"text":"ノーチラス観測錨を降ろすのに適した特殊な座標。座標をマークし、ポスアンカーを配置することで自由にネクサスへの行き来が可能になる。地脈や星辰の条件の揃う特殊な目標地点。"}]}},{"text":"です。"}]
tellraw @a[distance=..8,tag=skill2] [{"text":">>> アンカーの配置を試行します >>>"}]

# 接続成功
playsound minecraft:ui.toast.challenge_complete record @a[distance=..12,tag=skill2] ~ ~ ~ 1 0.8 1
title @a[distance=..12,tag=skill2] subtitle [{"text":"= ⚓ LINK of NEXUS ⚓ =","color":"dark_aqua","bold":true}]
title @a[distance=..12,tag=skill2] title [{"text":"接続成功！","color":"dark_aqua","bold":true}]
tellraw @a[distance=..12,tag=skill2] {"text":"解析値：ポスアンカーの配置に成功！","color":"dark_aqua","bold":true,"italic":false}
tellraw @a[distance=..12,tag=skill2] [{"text":"航海記(keybind-"},{"keybind":"key.advancements","color":"dark_aqua","bold":true},{"text":")に座標情報が記録されNEXUSとの巡航が可能となりました。"}]

# 攻略時間表示処理
tellraw @a[distance=..8,tag=skill2] [{"text":"座標名："},{"selector":"@s"}]
execute store result score survival temp run time query gametime
function neofunction:system/scoreboard/time
tellraw @a[distance=..12,tag=skill2] [{"text":"* 攻略時間 ","color":"yellow","bold":true,"italic":false,"underlined":true},{"score":{"name":"second","objective":"temp"}},{"text":"時間"},{"score":{"name":"minute","objective":"temp"}},{"text":"分"},{"score":{"name":"survival","objective":"temp"}},{"text":"秒"}]

# data merge entity @s {Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,180f,90f]},equipment:{mainhand:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":{floats:[156.0f]},"minecraft:enchantments":{"minecraft:infinity":1}}},offhand:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_model_data":{floats:[156.0f]},"minecraft:enchantments":{"minecraft:infinity":1}}}}}

# マクロにした
execute as @s[tag=posTutorial] run tag @s add TutorialResolved
function neofunction:asset/nbt/for_in_range {Min:1,Max:513,Function:"neofunction:asset/skill/2/anchor_for"}