# 命名：432_end
# 説明：【追加：2026-10-09 ルブラ編】選択 C のあと：夜、星見の塔へ。第三章の目印を置き（setup）、オルドとミラは塔の一階へ（目印が置かれる 2 秒後に tp）
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/choice_c_reveal（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/choice_c_hide（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/432_end

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 432 run return 0
execute if data storage neofunction:rubra d3{setup_called:1b} run return 0
data modify storage neofunction:rubra d3.setup_called set value 1b
function neofunction:system/rubra/d3/setup
schedule function neofunction:system/adv/tick/quest/40/d3/432_move 60t replace
tellraw @a[distance=..48] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"夜、星見の塔の一階へ。オルドが待っている","color":"white","bold":true,"italic":false,"underlined":false}]
