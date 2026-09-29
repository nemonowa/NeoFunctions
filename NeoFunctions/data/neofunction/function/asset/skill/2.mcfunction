# 命名：2
# 説明：エンティティ処理
# 実行条件：実行者はプレイヤー
# >/function neofunction:asset/skill/2-1
# =/function neofunction:asset/skill/2


# 内容
# サウンド再生（近距離プレイヤー向け）
playsound minecraft:entity.breeze.deflect record @a[distance=..8] ~ ~ ~ 1 0.2 1

# 対象がいない場合にエラーメッセージを表示して中断
execute as @s at @s unless entity @e[limit=1,sort=nearest,distance=0.1..6] run return run tellraw @s {"text":"解析対象が存在しません。","color":"dark_gray"}

# スキルタグ追加
tag @s add skill2

# 対象がいる場合、スキル関数実行
execute as @s at @s as @e[limit=1,sort=nearest,distance=0.1..6] run function neofunction:asset/skill/2/.neo

# スキルタグ除去
tag @s remove skill2

# SP消費（固定値16）
scoreboard players remove @s SP 16


