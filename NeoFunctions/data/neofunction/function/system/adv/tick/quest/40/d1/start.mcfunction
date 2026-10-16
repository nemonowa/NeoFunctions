# 命名：start
# 説明：第一章「紅脈の坑」を始める。迷宮の仕掛けと NPC を置き、進み具合を 410 にする
# 説明：序章（401〜409）ができるまでの仮の入口。制作者が手で実行する：/function neofunction:system/adv/tick/quest/40/d1/start
# >/function （手で実行）
# =/function neofunction:system/adv/tick/quest/40/d1/start

# 内容
# 前に遊んだときの第一章の選択（欠片をどうするか）とボスの記録を消す。残っていると、選択を押しても「もう選んだ」扱いで進まなかった
data remove storage neofunction:rubra choice.field
data remove storage neofunction:rubra worm
function neofunction:system/world/ceresta/rubra/d1/setup
scoreboard players set #temp main_story 410
data remove storage neofunction:rubra busy
tellraw @a [{"text":"＊","color":"#D8DE2A","italic":true},{"text":"メインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"紅脈の坑","color":"#D7263D","bold":true,"italic":false},{"text":" が始まった","color":"#FFD700","bold":true,"italic":false}]
tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"坑道の入口にいる鉱夫頭バルドに話を聞く","color":"white","bold":true,"italic":false,"underlined":false}]
