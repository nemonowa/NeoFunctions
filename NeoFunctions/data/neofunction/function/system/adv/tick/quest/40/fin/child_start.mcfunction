# 命名：child_start
# 説明：星の子を守る戦いを始める（結末 C だけ）：広場に星の子（914）。60 秒のあいだ、黒い滴りから星の子の光を守る（rubra_void/child_tick）
# 実行条件：実行者 プレイヤー（会話の最後の Command）。#temp main_story 447
# >/function neofunction:system/adv/tick/quest/40/fin/burst_c
# >/function neofunction:entity/skill/boss/rubra_void/child_tick
# =/function neofunction:system/adv/tick/quest/40/fin/child_start

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 447 run return 0
execute if entity @e[type=allay,tag=rubra_child] run return 0
# 星の子は空の舞台の真ん中に降りる
execute in neodimension:ceresta_festa positioned 921.5 202 3282.5 run function neofunction:asset/summon/914
data modify storage neofunction:rubra fin.child set value {g:100,t:0,w:0}
title @a[distance=..96] title {"text":"星の子を守れ","color":"#FF8C8C","bold":true}
tellraw @a[distance=..96] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"舞台の真ん中の星の子を、黒い滴りから 60 秒守る（滴りが近づくと、星の子の光が減る）","color":"white","bold":true,"italic":false,"underlined":false}]
