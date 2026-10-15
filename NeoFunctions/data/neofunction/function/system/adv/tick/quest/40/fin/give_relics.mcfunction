# 命名：give_relics
# 説明：専用の弓「星還しの弓」（1920）と矢を渡す。毎回渡す（タグ rubra_relic は付けるだけ。441〜448 はヴァルカに話しかけるたびに受け取れる：fin/valka_bow）。ミラ・オルド・セレンを広場へ。弓は討伐のあともそのまま報酬
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/fin/441
# =/function neofunction:system/adv/tick/quest/40/fin/give_relics

# 内容
data remove storage neofunction:rubra busy
execute as @e[type=marker,tag=rubra_fin_mira,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
execute as @e[type=marker,tag=rubra_fin_ordo,limit=1] at @s run tp @e[type=villager,tag=rubra_ordo] ~ ~ ~ ~ ~
execute unless entity @e[type=mannequin,tag=rubra_fin_selenv] as @e[type=marker,tag=rubra_fin_selen,limit=1] at @s run summon mannequin ~ ~ ~ {Rotation:[180.0f,0.0f],Invulnerable:1b,Silent:1b,Tags:["rubra_fin","rubra_fin_selenv"],hide_description:1b,immovable:1b,equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3487029}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3487029}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3487029}},mainhand:{id:"minecraft:stick",count:1}}}
tag @s add rubra_relic
loot give @s loot neofunction:item/1920
give @s minecraft:arrow 64
tellraw @s {"text":"星還しの弓を受け取った。","color":"#FFC23D","italic":true}
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"夜、星の広場へ。オルドに話しかける（星還祭は日が沈んでから）","color":"white","bold":true,"italic":false,"underlined":false}]
