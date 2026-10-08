# 命名：boss_start
# 説明：【追加：2026-10-08 ルブラ編】星喰い蟲との戦いを始める。真ん中の穴の下に本体（810）・頭・体の節 12・当たり判定 12 を出し、動きの記録を用意する
# 実行条件：#temp main_story 414（会話の最後の Command、または負けたあとのやり直し）
# >/function neofunction:system/adv/tick/quest/40/d1/414（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d1/zone
# =/function neofunction:system/adv/tick/quest/40/d1/boss_start

# 内容
execute unless score #temp main_story matches 414 run return 0
scoreboard players set #temp main_story 415
data remove storage neofunction:rubra busy
data modify storage neofunction:rubra d1.retry set value 0b
execute in neodimension:ceresta_festa positioned 812.5 -46 3268.5 run function neofunction:entity/skill/boss/rubra_worm/spawn
tellraw @a[distance=..64] {"text":"目標：星喰い蟲を止める","color":"gray","italic":true}
