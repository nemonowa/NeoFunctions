# 命名：reset
# 説明：制作用：第三章をやり直せる状態に戻す（目印を置き直し、ボスを片付け、選択を消し、進み具合を 430 に）
# 説明：手で実行：/function neofunction:system/rubra/d3/reset
# >/function （手で実行）
# =/function neofunction:system/rubra/d3/reset

# 内容
kill @e[tag=rubra_cradle_part]
data remove storage neofunction:rubra cradle
data remove storage neofunction:rubra choice.reveal
data remove storage neofunction:rubra choice.selen_way
function neofunction:system/rubra/d3/setup
scoreboard players set #temp main_story 430
