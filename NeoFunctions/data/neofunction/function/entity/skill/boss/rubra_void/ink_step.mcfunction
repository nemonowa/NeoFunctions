# 命名：ink_step
# 説明：黒い水の上に立っている：乗った瞬間に即時ダメージ I（降りるまで二度目はない）と、ウィザー II 6 秒（乗っているあいだ 0.5 秒ごとに掛け直す）
# 実行条件：実行者 黒い水の上に立っているプレイヤー
# >/function neofunction:entity/skill/boss/rubra_void/ink_tick
# =/function neofunction:entity/skill/boss/rubra_void/ink_step

# 内容
effect give @s minecraft:wither 6 1 true
effect give @s minecraft:darkness 2 0 true
execute unless entity @s[tag=rubra_onink] run effect give @s minecraft:instant_damage 1 0 true
tag @s add rubra_onink
