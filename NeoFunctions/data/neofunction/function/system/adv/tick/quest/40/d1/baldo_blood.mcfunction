# 命名：baldo_blood
# 説明：第一章のあと（419 から）バルドに話しかけた：ソウルイーターの星の血晶（1905）を渡す。話しかけるたびに受け取れる
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/villager/903
# =/function neofunction:system/adv/tick/quest/40/d1/baldo_blood

# 内容
tellraw @s [{"text":"<"},{"text":"バルド","color":"#C9784A","bold":true},{"text":"> 「星の血晶なら、坑道の奥から鉱夫たちがまた拾ってきた。……持っていきな。あの赤は、まだ温かい」"}]
loot give @s loot neofunction:item/1905
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1
