# 命名：終影審判【エンド・オブ・シャドウ】
# 説明：発動時、周囲16mの敵に対し0.1秒ごとに敵の背後を取り、致命的な連撃をお見舞いする。影の鉄槌を下すAssasinの奥義(SP100消費）
# >/function neofunction:player/job/shooter/skill-special
# =/function neofunction:player/job/shooter/skill-special-loop


# 内容
execute as @a[tag=shooter-special] at @e[tag=shooter-special-1,sort=furthest] positioned ^ ^ ^-1 run tp @s ~ ~ ~
execute as @a[tag=shooter-special] at @s run damage @e[tag=shooter-special-1,limit=1,sort=nearest] 30 minecraft:arrow by @p
execute as @a[tag=shooter-special] at @s run playsound minecraft:entity.enderman.teleport record @s ~ ~ ~ 1.0 0.5
execute as @a[tag=shooter-special] at @s run playsound minecraft:entity.allay.item_taken record @s ~ ~ ~ 0.5 1.5

execute as @e[tag=enemy,distance=..16] at @s run particle minecraft:witch ~ ~ ~ 1 1 1 0.1 30 normal @a

# 効果音
execute unless entity @e[tag=shooter-special-1] run tag @e[tag=shooter-special] remove shooter-special
execute unless entity @e[tag=shooter-special-1] run return run say 対象がいない
execute unless entity @a[tag=shooter-special] run return run say 実行者がいない

schedule function neofunction:player/job/shooter/skill-special-loop 2t append
