# 命名：macro
# 説明：difficulty worldのスコア分だけ敵のステータスが変動する。スコアが20なら2%HPとATKが追加される。
# 説明：テストケース：下は最大体力の80%減少するコマンド
# 説明：テストケース：/attribute @s minecraft:generic.max_health modifier add 0-0-0-0-5 difficulty -0.8 multiply_base
# 説明：テストケース：/attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-5
# 実行条件：impulse
# >/function neofunction:player/attribute/difficulty
# =/function neofunction:entity/attribute/difficulty/macro



## 内容
$attribute @s minecraft:attack_damage modifier add neofunction:00000000-0000-0000-0000-000000000005 $(world) add_multiplied_base
$attribute @s minecraft:max_health modifier add neofunction:00000000-0000-0000-0000-000000000005 $(world) add_multiplied_base
