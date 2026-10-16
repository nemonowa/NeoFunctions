# 命名：jpick_one
# 説明：手記を 1 冊拾う。引数 k＝1・3・4、where＝見つけたときの文
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/world/ceresta/rubra/jpick
# =/function neofunction:system/world/ceresta/rubra/jpick_one

# 内容
$tag @s add rubra_j$(k)
$loot give @s loot neofunction:item/187$(k)
$tellraw @s [{"text":"$(where)","color":"#C9A27E","italic":true},{"text":"「アズールの手記 その$(k)」を手に入れた。","color":"#C9A27E","italic":true}]
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
