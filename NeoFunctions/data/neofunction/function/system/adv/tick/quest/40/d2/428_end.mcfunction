# 命名：428_end
# 説明：セレンが去ったあと：見た目のセレンを消し、最奥の小部屋「最初の泉」の扉を開ける
# 実行条件：実行者 プレイヤー（会話の最後の Command）、またはセレン（逃げたとき）
# >/function neofunction:system/adv/tick/quest/40/d2/choice_b_listen（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d2/choice_b_go（会話の Command）
# >/function neofunction:entity/skill/boss/rubra_selen/flee
# =/function neofunction:system/adv/tick/quest/40/d2/428_end

# 内容
data remove storage neofunction:rubra busy
execute if data storage neofunction:rubra d2{selen:1b} run return 0
data modify storage neofunction:rubra d2.selen set value 1b
execute as @e[type=mannequin,tag=rubra_selen] at @s run particle minecraft:end_rod ~ ~1 ~ 0.4 1 0.4 0.05 60 normal
execute as @e[type=mannequin,tag=rubra_selen] at @s run tellraw @a[distance=..40] {"text":"セレンの足もとの黒い水が、ざわりと波立った。……次の瞬間、そこに彼女の姿はなかった。","color":"gray","italic":true}
kill @e[type=mannequin,tag=rubra_selen]
execute as @e[type=marker,tag=rubra_door_spring] at @s run function neofunction:system/world/ceresta/rubra/d2/door/open
tellraw @a[distance=..48] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"祠の奥、最初の泉へ","color":"white","bold":true,"italic":false,"underlined":false}]
