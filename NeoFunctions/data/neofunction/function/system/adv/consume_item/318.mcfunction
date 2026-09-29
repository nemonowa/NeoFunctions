# 命名：318
# 説明：進捗達成時
# 説明：ワイルドベリー
# >/function neofunction:consume_item/317
# =/function neofunction:system/adv/consume_item/318


# 内容
scoreboard players add @s SP 5

title @s actionbar [{"text":"SP回復 +5｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal

execute as @s[advancements={neoadvancement:neoskill/37=true}] run return run title @s actionbar {"text":"۞ブラックイミュニティー۞発動！","color":"light_purple","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"毒果実への耐性"}]}}

effect give @s poison 9 9

tellraw @s [{"text":"<","color":"white",hover_event:{"action":"show_text","value":[{"text":"説明：有毒な果実。1%で毒耐性スキル「ブラックイミュニティー」を習得できる。"}]}},{"selector":"@s","color":"white"},{"text":"> 「この味は..."},{"text":"ブラックベリー","color":"dark_blue","bold":true,"underlined":true},{"text":"だと思う！」"}]

# 1%で毒耐性スキルを獲得
execute if predicate neofunction:random_chance/1 run tag @s add learn37

playsound minecraft:ui.toast.challenge_complete record @s[tag=learn37] ~ ~ ~ 1 1.5 1

execute as @s[tag=learn37] run tellraw @a[tag=learn37] [{"selector":"@s","color":"gold","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"説明：ベリーを食べたときに毒状態を解除する。"}]}},{"text":"がスキル：","color":"yellow"},{"text":"ブラックイミュニティー","color":"gold"},{"text":"を習得した！","color":"yellow"}]

advancement grant @s[tag=learn37] only neoadvancement:neoskill/37

tag @s remove learn37