# 命名：skillreset
# 説明：プレイヤーのスキル設定を外す
# > 職業チェンジ処理
# =/function neofunction:system/scoreboard/skillreset



#内容

#スキル設定を初期化
scoreboard players set @s slotR 0
scoreboard players set @s slotG 0
scoreboard players set @s slotB 0

#各スキルタグ除去
#リアクティブヒール
tag @s remove skill25
#ドクターのトグルタグ
tag @s remove skill242
tag @s remove skill243
tag @s remove skill244
tag @s remove skill245
tag @s remove skill246
tag @s remove skill247
tag @s remove skill248
tag @s remove skill249
#使役の自己保存タグ
tag @s remove tamerred
tag @s remove tamergreen
tag @s remove tamerblue
