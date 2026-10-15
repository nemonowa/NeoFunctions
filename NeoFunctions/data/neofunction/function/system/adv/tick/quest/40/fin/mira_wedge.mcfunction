# 命名：mira_wedge
# 説明：終章（440）でミラに話しかけた：セレンから預かった天墜の楔（1918）を渡す。話しかけるたびに受け取れる
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/fin/mira_wedge

# 内容
tellraw @s [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「ヴァルカさんに、3 つの素材を見せに行きましょう。……天墜の楔なら、師匠から預かってます。はい、どうぞ」"}]
loot give @s loot neofunction:item/1918
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1
