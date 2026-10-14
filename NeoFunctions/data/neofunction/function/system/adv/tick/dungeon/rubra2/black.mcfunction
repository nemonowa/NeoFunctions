# 命名：black
# 説明：【追加：2026-10-09 ルブラ編】黒い水（黒いカーペット）の上に立っている：暗闇と衰弱。初めてのときだけ説明を出す
# 実行条件：実行者 プレイヤー（足もとが黒いカーペット）
# >/function neofunction:system/adv/tick/dungeon/rubra2
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:system/adv/tick/dungeon/rubra2/black

# 内容
# 【変更：2026-10-14】受ける効果はウィザー II（6 秒）だけ（前は暗闇と衰弱）
effect give @s minecraft:wither 6 1 true
execute unless entity @s[tag=rubra_blackmsg] run tellraw @s {"text":"黒い水が、足に絡みつく。冷たい……何かが、体の熱を吸っていく。（黒い水の上にいると削られる）","color":"#6E7390","italic":true}
tag @s add rubra_blackmsg
