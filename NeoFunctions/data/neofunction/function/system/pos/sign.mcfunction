# 命名：sign
# 説明：看板が叩かれたとき実行するコマンド群
# 説明：数字がposストレージに渡される
# 説明：共通：SP消費
# 説明：共通：音
# 説明：共通：パーティクル
# 説明：マクロ：自身の内容を上書き
# 説明：マクロ：コンパス書き換え新コンパスgive
# 説明：実行者@s（看板を押したプレイヤー
# 説明：⚓AnchorPoint⚓
# 説明：<pos:name>
# 説明：pos:<pos> N:<x> W:<z>
# 説明：۞LINK-of-NEXUS۞
# >/function neofunction:system/pos/sign {pos:0}
# =/function neofunction:system/pos/sign


## 内容
scoreboard players remove @s SP 35
title @s actionbar [{"text":"冀求力：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}},{"text":"/"},{"score":{"name":"SPmax","objective":"SP"}}]
playsound minecraft:entity.arrow.hit_player record @a[distance=..16] ~ ~ ~ 1 2 1
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

# 看板更新
$data merge block ~ ~ ~ {back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},front_text:{color:"black",has_glowing_text:1b,messages:[{"bold":true,"color":"dark_gray",click_event:{"action":"run_command",command:"/function neofunction:system/pos/sign {pos:$(pos)}"},"italic":false,"text":"⚓AnchorPoint⚓"},{"nbt":"name","storage":"pos:$(pos)","interpret":true},[{"text":"pos:$(pos)","underlined":true,"color":"dark_aqua","italic":false},{"text":" N:"},{"nbt":"x","storage":"pos:$(pos)"},{"text":" W:"},{"nbt":"z","storage":"pos:$(pos)"}],{"bold":true,"color":"dark_gray","italic":false,"text":"۞LINK-of-NEXUS۞"}]},is_waxed:0b,allow_op_features:1b}

# コンパス
# 【変更：2026-09-27 26.3対応】コンパスの名前と座標を型のまま写すため、登録データを一時ストレージにコピーしてから呼ぶ
$data modify storage neofunction:pos_compass data set from storage pos:$(pos)
$function neofunction:system/pos/compass with storage pos:$(pos)