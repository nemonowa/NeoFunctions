# 命名：sign
# 説明：看板が叩かれたとき実行するコマンド群
# 説明：数字がskillストレージに渡される
# 説明：共通：SP消費
# 説明：共通：音
# 説明：共通：パーティクル
# 説明：マクロ：自身の内容を上書き
# 説明：マクロ：コンパス書き換え新コンパスgive
# 説明：実行者@s（看板を押したプレイヤー
# >/function neofunction:system/trigger/skill/sign {skill:0}
# =/function neofunction:system/trigger/skill/sign




## 内容
# scoreboard players remove @s SP 35
playsound minecraft:entity.arrow.hit_player record @a[distance=..16] ~ ~ ~ 1 2 1
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

$data merge block ~ ~ ~ {back_text:{color:"black",messages:["","","",""]},front_text:{color:"white",messages:[{"bold":true,click_event:{"action":"run_command",command:"/function neofunction:system/trigger/skill/sign {skill:$(skill)}"},"color":"light_purple","italic":false,"text":"۞スペルサイン۞","underlined":true},{"color":"blue","text":"「異能解放 」"},{"color":"white","text":"id:$(skill) level:1 required"},{"color":"aqua","nbt":"name","storage":"neofunction:skill/$(skill)","interpret":true,"underlined":true}]},is_waxed:0b,allow_op_features:1b}

$tellraw @s [{"color":"aqua","nbt":"lore","storage":"neofunction:skill/$(skill)","interpret":true}]

$trigger skill set $(skill)