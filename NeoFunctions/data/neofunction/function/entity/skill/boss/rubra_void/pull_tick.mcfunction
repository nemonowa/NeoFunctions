# 命名：pull_tick
# 説明：【追加：2026-10-09 ルブラ編】零点崩壊（毎 tick）：はじめ 2 秒は予告。あとの 4 秒、近くの人を渦の芯へ引き寄せる（灯籠の支えがあると弱い。遮る柱の陰にいる＝体の前が塞がっていると引かれない）。芯の近くは削られる。第 3 形態では、本来の大技が始まると渦がはね返される
# 説明：【変更：2026-10-14】エリートチャレンジ（fin.elite）ではダメージ 1.5 倍
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/pull_tick

# 内容
execute store result score #rv_p temp run data get storage neofunction:rubra fin.pull
scoreboard players remove #rv_p temp 1
execute store result storage neofunction:rubra fin.pull int 1 run scoreboard players get #rv_p temp
execute if score #rv_p temp matches 81.. run particle minecraft:portal ~ ~ ~ 8 8 8 1 60 force @a[distance=..128]
execute if score #rv_p temp matches 1..80 run particle minecraft:reverse_portal ~ ~ ~ 12 8 12 0.3 80 force @a[distance=..128]
execute if score #rv_p temp matches 1..80 if data storage neofunction:rubra choice{reveal:"reveal"} as @a[distance=..64,gamemode=!spectator] at @s facing entity @e[type=ghast,tag=rubra_void,limit=1] feet positioned ^ ^ ^0.14 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable if block ^ ^1 ^0.6 #minecraft:replaceable run tp @s ~ ~ ~
execute if score #rv_p temp matches 1..80 unless data storage neofunction:rubra choice{reveal:"reveal"} as @a[distance=..64,gamemode=!spectator] at @s facing entity @e[type=ghast,tag=rubra_void,limit=1] feet positioned ^ ^ ^0.26 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable if block ^ ^1 ^0.6 #minecraft:replaceable run tp @s ~ ~ ~
scoreboard players operation #rv_m temp = #rv_p temp
scoreboard players operation #rv_m temp %= $10 const
execute unless data storage neofunction:rubra fin{elite:1b} if score #rv_p temp matches 1..80 if score #rv_m temp matches 0 as @a[distance=..8,gamemode=!spectator] run damage @s 4 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if data storage neofunction:rubra fin{elite:1b} if score #rv_p temp matches 1..80 if score #rv_m temp matches 0 as @a[distance=..8,gamemode=!spectator] run damage @s 6 minecraft:magic by @e[type=ghast,tag=rubra_void,limit=1]
execute if score #rv_p temp matches 0 run effect give @a[distance=..128] minecraft:slow_falling 5 0 true
