# 命名：valka_bow
# 説明：【追加：2026-10-14 ルブラ編】弓を打ったあと（441〜448）ヴァルカに話しかけた：星還しの弓（1920）と矢を渡す。話しかけるたびに受け取れる
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/villager/912
# =/function neofunction:system/adv/tick/quest/40/fin/valka_bow

# 内容
tellraw @s [{"text":"<"},{"text":"ヴァルカ","color":"#D9822B","bold":true},{"text":"> 「弓なら、ここに予備がある。……持っていけ。引くのは腕じゃない、胸だ」"}]
loot give @s loot neofunction:item/1920
give @s minecraft:arrow 64
playsound minecraft:block.anvil.use block @s ~ ~ ~ 0.6 1.4
tellraw @s {"text":"星還しの弓を受け取った。","color":"#FFC23D","italic":true}
