# 命名：ambush_give
# 説明：実行者(@s＝プレイヤー)に「奇襲体勢」を付与する共通処理。
# 説明：奇襲体勢中は 252影打ち の対象認識判定を無視して確定発動できる。
# 説明：既に付与されている場合は継続時間を延長するだけ（上書き式）。
# >execute as <プレイヤー> run function neofunction:asset/skill/ambush_give
# =/function neofunction:asset/skill/ambush_give

tag @s add ambush

# 演出
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.3 0.3 0.01 8 normal

# 3秒(60t)後に自動解除（再付与されると延長される）
schedule function neofunction:asset/skill/ambush_clear_target 60t replace
