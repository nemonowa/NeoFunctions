# 命名：617
# 説明：
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/617


# 説明：ベル話しかけたときの固有処理！
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「釣りはいいぞ（釣りはいいぞ）」"}]

execute store result storage neofunction:talk_villager Day int 1 run time of minecraft:overworld query minecraft:day repetition
execute store success score #Calc1 temp run data modify entity @s equipment.head.components."minecraft:custom_data".Day set from storage neofunction:talk_villager Day

# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
execute if score #Calc1 temp matches 0 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> "},{"entity": "@s","nbt": 'equipment.head.components."minecraft:custom_data".TalkMessage',"interpret": true}]

execute store success score #Uncollected5 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/5={requirement=false}},distance=..8]
execute store success score #Uncollected6 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/6={requirement=false}},distance=..8]
execute store success score #Uncollected7 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/7={requirement=false}},distance=..8]
execute store success score #Uncollected8 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/8={requirement=false}},distance=..8]
execute store success score #Uncollected9 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/9={requirement=false}},distance=..8]
execute store success score #Uncollected10 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/10={requirement=false}},distance=..8]
execute store success score #Uncollected11 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/11={requirement=false}},distance=..8]
execute store success score #Uncollected12 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/12={requirement=false}},distance=..8]
execute store success score #Uncollected13 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/13={requirement=false}},distance=..8]
execute store success score #Uncollected14 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/14={requirement=false}},distance=..8]
execute store success score #Uncollected15 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/15={requirement=false}},distance=..8]
execute store success score #Uncollected16 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/16={requirement=false}},distance=..8]
execute store success score #Uncollected17 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/17={requirement=false}},distance=..8]
execute store success score #Uncollected18 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/18={requirement=false}},distance=..8]
execute store success score #Uncollected19 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/19={requirement=false}},distance=..8]
execute store success score #Uncollected20 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/20={requirement=false}},distance=..8]
execute store success score #Uncollected21 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/21={requirement=false}},distance=..8]
execute store success score #Uncollected22 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/22={requirement=false}},distance=..8]
execute store success score #Uncollected23 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/23={requirement=false}},distance=..8]
execute store success score #Uncollected24 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/24={requirement=false}},distance=..8]
execute store success score #Uncollected25 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/25={requirement=false}},distance=..8]
execute store success score #Uncollected26 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/26={requirement=false}},distance=..8]
execute store success score #Uncollected27 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/27={requirement=false}},distance=..8]
execute store success score #Uncollected28 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/28={requirement=false}},distance=..8]
execute store success score #Uncollected29 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/29={requirement=false}},distance=..8]
execute store success score #Uncollected30 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/30={requirement=false}},distance=..8]
execute store success score #Uncollected31 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/31={requirement=false}},distance=..8]
execute store success score #Uncollected32 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/32={requirement=false}},distance=..8]
execute store success score #Uncollected33 temp if entity @a[advancements={neoadvancement:neofishing/root/ceresta/33={requirement=false}},distance=..8]

summon item_display ~ ~ ~ {view_range:0,Tags:["del","resolve"]}
loot replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 loot neofunction:system/villager/617
data modify entity @s equipment.head.components."minecraft:custom_data".TalkMessage set from entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:custom_data".TalkMessage

execute if entity @a[advancements={neoadvancement:neofishing/root/ceresta/5={requirement=true},neoadvancement:neofishing/root/ceresta/6={requirement=true},neoadvancement:neofishing/root/ceresta/7={requirement=true},neoadvancement:neofishing/root/ceresta/8={requirement=true},neoadvancement:neofishing/root/ceresta/9={requirement=true},neoadvancement:neofishing/root/ceresta/10={requirement=true},neoadvancement:neofishing/root/ceresta/11={requirement=true},neoadvancement:neofishing/root/ceresta/12={requirement=true},neoadvancement:neofishing/root/ceresta/13={requirement=true},neoadvancement:neofishing/root/ceresta/14={requirement=true},neoadvancement:neofishing/root/ceresta/15={requirement=true},neoadvancement:neofishing/root/ceresta/16={requirement=true},neoadvancement:neofishing/root/ceresta/17={requirement=true},neoadvancement:neofishing/root/ceresta/18={requirement=true},neoadvancement:neofishing/root/ceresta/19={requirement=true},neoadvancement:neofishing/root/ceresta/20={requirement=true},neoadvancement:neofishing/root/ceresta/21={requirement=true},neoadvancement:neofishing/root/ceresta/22={requirement=true},neoadvancement:neofishing/root/ceresta/23={requirement=true},neoadvancement:neofishing/root/ceresta/24={requirement=true},neoadvancement:neofishing/root/ceresta/25={requirement=true},neoadvancement:neofishing/root/ceresta/26={requirement=true},neoadvancement:neofishing/root/ceresta/27={requirement=true},neoadvancement:neofishing/root/ceresta/28={requirement=true},neoadvancement:neofishing/root/ceresta/29={requirement=true},neoadvancement:neofishing/root/ceresta/30={requirement=true},neoadvancement:neofishing/root/ceresta/31={requirement=true},neoadvancement:neofishing/root/ceresta/32={requirement=true},neoadvancement:neofishing/root/ceresta/33={requirement=true}},distance=..8] run data modify entity @s equipment.head.components."minecraft:custom_data".TalkMessage set value '{"text":"「魚ってレベルじゃねぇのも混ざってた気がするが……まあいい、コンプリートだ。おめでとう。」"}'

# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> "},{"entity": "@s","nbt": 'equipment.head.components."minecraft:custom_data".TalkMessage',"interpret": true}]