# 命名：903
# 説明：【追加：2026-10-08 ルブラ編】バルド（鉱夫頭）に話しかけたとき。410 で話を聞く、417 で知らせる。それ以外はひとこと
# 実行条件：実行者・実行位置 バルド（村人、DeathLootTable neofunction:asset/summon/903）
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/903

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
execute if score #temp main_story matches 410 run return run function neofunction:system/adv/tick/quest/40/d1/410
execute if score #temp main_story matches 417 run return run function neofunction:system/adv/tick/quest/40/d1/418
execute if score #temp main_story matches 411..416 run return run tellraw @p [{"text":"<"},{"text":"バルド","color":"#C9784A","bold":true},{"text":"> 「足跡は奥へ続いてる。三の層より下は真っ暗だ。欠片の灯りを忘れるなよ」"}]
# 【追加：2026-10-14】第一章のあと（419 から）は、星の血晶を話しかけるたびに渡す
execute if score #temp main_story matches 419.. as @p run return run function neofunction:system/adv/tick/quest/40/d1/baldo_blood
tellraw @p [{"text":"<"},{"text":"バルド","color":"#C9784A","bold":true},{"text":"> 「赤い顔料なら、上の層にいくらでもある。……深い層は、そっとしといてやれ」"}]
