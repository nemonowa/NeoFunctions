# 命名：335
# 説明：【追加：2026-10-14 ルブラ編】スペルブック:【鉱脈感知】（item 1983）を習得する。スキル 260
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/335



## 内容：
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1983.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

tellraw @s [{"text":"【鉱脈感知【ヴェイン・サーチ】】を習得した！"}]

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5 1

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[1983.0f]}] 1

# 名前と説明（スキルの一覧に出る）。ワールドの記録が空きのままでも出るように、ここでも入れる
data merge storage neofunction:skill/260 {name:"鉱脈感知【ヴェイン・サーチ】",lore:"いちばん近い鉱石を10秒間光らせる（半径12m）。バニラのすべての鉱石に反応し、メサではルブラの鉱石（紅鉄・星鉄・星核）にも反応する（SP10消費）"}

advancement grant @s only neoadvancement:neoskill/260
