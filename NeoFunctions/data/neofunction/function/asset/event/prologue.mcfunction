# 命名：prologue
# 説明：導入描写 プロローグ
# 説明：tag=prologue 呼び出し
# 説明：実行者は@sにしろ
# >/function neofunction:system/trigger/code/10
# =/function neofunction:asset/event/prologue


# 内容
# execute as @s[advancements={neoadvancement:nexus/root/1/0=false}] run return run title @s actionbar [{"text":"注：先にチュートリアルを完了してください！"}]
stopsound @s
advancement revoke @s only neofunction:tick/entity_scores/prog/1
advancement revoke @s only neofunction:tick/entity_scores/prog/2
advancement revoke @s only neofunction:tick/entity_scores/prog/3
advancement revoke @s only neofunction:tick/entity_scores/prog/4
advancement revoke @s only neofunction:tick/entity_scores/prog/5
advancement revoke @s only neofunction:tick/entity_scores/prog/6
advancement revoke @s only neofunction:tick/entity_scores/prog/7
advancement revoke @s only neofunction:tick/entity_scores/prog/8
advancement revoke @s only neofunction:tick/entity_scores/prog/9
advancement revoke @s only neofunction:tick/entity_scores/prog/10
advancement revoke @s only neofunction:tick/entity_scores/prog/11

scoreboard players set @s prog 1
scoreboard players set @s prog_timer 0

effect give @s minecraft:blindness 5 0 true

setblock 848 43 1017 minecraft:air
setblock 841 43 1026 minecraft:air
setblock 839 43 1032 minecraft:air
setblock 838 43 1023 minecraft:air
setblock 835 43 1029 minecraft:air
setblock 844 43 1023 minecraft:air
function neofunction:asset/event/prologue/radomprogtp
setblock 848 43 1017 minecraft:spruce_slab[type=bottom,waterlogged=false]
setblock 841 43 1026 minecraft:spruce_slab[type=bottom,waterlogged=false]
setblock 839 43 1032 minecraft:spruce_slab[type=bottom,waterlogged=false]
setblock 838 43 1023 minecraft:spruce_slab[type=bottom,waterlogged=false]
setblock 835 43 1029 minecraft:spruce_slab[type=bottom,waterlogged=false]
setblock 844 43 1023 minecraft:spruce_slab[type=bottom,waterlogged=false]

function neofunction:system/music/finish
function neofunction:system/music/harvestdance/play

