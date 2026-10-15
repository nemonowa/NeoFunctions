# 命名：reset
# 説明：制作用：第二章をやり直せる状態に戻す（NPC と仕掛けを置き直し、選択を消し、滝を元の太さに戻し、進み具合を 420 に）
# 説明：手で実行：/function neofunction:system/rubra/d2/reset
# >/function （手で実行）
# =/function neofunction:system/rubra/d2/reset

# 内容
kill @e[tag=rubra_keeper_part]
data remove storage neofunction:rubra keeper
data remove storage neofunction:rubra choice.council
data remove storage neofunction:rubra choice.selen
function neofunction:system/rubra/d2/fall_restore
function neofunction:system/rubra/d2/setup
scoreboard players set #temp main_story 420
