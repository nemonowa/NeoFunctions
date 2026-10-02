# 命名：spawn
# 説明：重力井戸（試作）。当たった所に井戸（マーカー）を作る。矢なら消す
# 実行条件：当たった矢（hit_block）か、攻撃された相手（post_attack）
# >/enchantment neofunction:test/well
# =/function admin:test/enchant/well/spawn


# 内容
scoreboard objectives add neo.well dummy
summon minecraft:marker ~ ~ ~ {Tags:["neo.well","neo.well_new"]}
scoreboard players set @e[type=marker,tag=neo.well_new] neo.well 60
tag @e[type=marker,tag=neo.well_new] remove neo.well_new
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 0.5
schedule function admin:test/enchant/well/loop 1t replace
kill @s[type=#minecraft:arrows]
