# 命名：=/function neofunction:entity/skill/boss/ekiriburiamu/elite
# 説明：エリートエキリブリアム
# 説明：呼び出し >看板
# 実行条件：看板を叩いた人が実行者
# >
# =/function neofunction:entity/skill/boss/ekiriburiamu/elite

# 内容：魔女保護を起動
execute in neodimension:ceresta_festa run setblock 1029 4 1764 minecraft:redstone_block
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] run return 0
execute as @a[tag=temp233] at @s run tp @a[distance=..32] 1029.53 7.00 1776.36 180 0
#ゲート削除
execute in neodimension:ceresta_festa run fill 1032 7 1762 1026 14 1768 air
#召喚
execute in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/768
#消化
execute in neodimension:ceresta_festa run fill 999 7 1735 1058 7 1796 air replace fire 
#一時タグ削除
tag @a remove temp233