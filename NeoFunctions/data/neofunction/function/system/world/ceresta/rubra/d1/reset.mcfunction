# 命名：reset
# 説明：制作用：紅脈の坑をやり直せる状態に戻す（仕掛けと NPC を置き直し、星核の花を植え直し、崩れた横穴を開け、選択を消し、進み具合を 410 に）
# 説明：壊れた巨人の像は戻らない（建て直すなら rubra_dungeon1 の build か region の差し替え）。手で実行：/function neofunction:system/world/ceresta/rubra/d1/reset
# >/function （手で実行）
# =/function neofunction:system/world/ceresta/rubra/d1/reset

# 内容
kill @e[tag=rubra_worm_part]
data remove storage neofunction:rubra worm
data remove storage neofunction:rubra choice.field
function neofunction:system/world/ceresta/rubra/d1/setup
schedule function neofunction:system/world/ceresta/rubra/d1/reset_2 30t replace
scoreboard players set #temp main_story 410
