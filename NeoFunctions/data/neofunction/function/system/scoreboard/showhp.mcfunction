# 命名：showhp
# 説明：HP可視化処理
# 説明：プレイヤーがダメージを与えたエンティティ（全プレイヤーのうちスキルを習得しているプレイヤーの、HPを持つ自身以外のダメージを受けたエンティティにコマンドを実行する）
# >/function neofunction:system/adv/player_hurt_entity/.all
# =/function neofunction:system/scoreboard/showhp


# HPmaxスコアがない場合
execute unless score @s HPmax matches 0.. store result score @s HPmax run data get entity @s Health

# HP変動監視
execute as @s store result score @s HP run data get entity @s Health 1.0
execute as @s store result score @s DEF run data get entity @s AbsorptionAmount
scoreboard players operation @s HP += @s DEF

execute as @s run title @a[distance=..64] actionbar [{"selector":"@s"},{"text":":"},{"score":{"name":"@s","objective":"HP"}},{"text":"/"},{"score":{"name":"@s","objective":"HPmax"}}]