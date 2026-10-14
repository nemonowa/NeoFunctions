# 命名：talk
# 説明：【追加：2026-10-14 ルブラ編】星還りの空のセレンに話しかけた：もう一度挑む（4491）か、エリートチャレンジ（4492）かをチャットで選ぶ。星還しの弓と矢を持っていなければ渡す
# 実行条件：実行者 プレイヤー（rubra_click の振り分けから）。ルブラ編を終えている（#temp main_story 449）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/fin/refight/talk

# 内容
execute unless score #temp main_story matches 449.. run return run tellraw @s [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「……まだ、夜は終わっていないわ」"}]
execute unless data storage neofunction:rubra fin{state:"done"} unless data storage neofunction:rubra fin{state:"gone"} unless data storage neofunction:rubra fin{state:"none"} run return run tellraw @s [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「今は、目の前のことに集中して」"}]
execute unless items entity @s container.* *[minecraft:custom_data~{rubra_bow:1}] unless items entity @s weapon.offhand *[minecraft:custom_data~{rubra_bow:1}] run loot give @s loot neofunction:item/1920
execute unless items entity @s container.* minecraft:arrow unless items entity @s weapon.offhand minecraft:arrow run give @s minecraft:arrow 1
tellraw @s [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「虚の海は、まだ鉢の底で眠っている。……確かめたいなら、もう一度、呼び起こしてあげる」"}]
tellraw @s [{"text":"　"},{"text":"［もう一度挑む］","color":"#B8D8FF","bold":true,"hover_event":{"action":"show_text","value":{"text":"ヴォイド・ゼロと、もう一度戦う（負けたときは、たどり着いた形態から）","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4491"}},{"text":"　"},{"text":"［エリートチャレンジ］","color":"#FF5555","bold":true,"hover_event":{"action":"show_text","value":{"text":"ダメージ上昇・取り巻きの強化・攻撃の苛烈化・特殊行動の追加","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4492"}}]
