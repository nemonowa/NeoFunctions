# 命名：frograidcheck
# 説明：特定条件下で起動されるレイドイベント、チェック用
# >ワールド内のルクスのコマンド部屋
# =/function neofunction:system/world/ceresta/lux/frograidcheck

# 内容
tp @e[type=frog,distance=48..] 691 45 2226
execute if entity @e[type=minecraft:spawner_minecart,distance=..64] run return 0
execute in neodimension:ceresta_festa run setblock 690 38 2216 minecraft:lapis_block
execute as @a[distance=..64] run tellraw @s "レイドイベントをクリアした"