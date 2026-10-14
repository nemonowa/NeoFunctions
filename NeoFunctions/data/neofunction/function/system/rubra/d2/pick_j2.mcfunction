# 命名：pick_j2
# 説明：【追加：2026-10-09 ルブラ編】壁画の間でアズールの手記 その二（1909）を拾う。【変更：2026-10-14】触れるたびに毎回手に入る（タグ rubra_j2 は結末 C の条件に使うので付けるだけ）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/rubra/d2/pick
# =/function neofunction:system/rubra/d2/pick_j2

# 内容
tag @s add rubra_j2
loot give @s loot neofunction:item/1909
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 0.8
tellraw @s {"text":"石の台の上に、古い手記が置かれていた。「アズールの手記 その二」を手に入れた。","color":"#C9A27E","italic":true}
