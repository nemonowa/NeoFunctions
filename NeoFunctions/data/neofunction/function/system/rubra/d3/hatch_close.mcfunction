# 命名：hatch_close
# 説明：塔の一階の床石（台座の裏の 3×3）を閉じ直す。第三章が終わったら（439）閉じる。開いたままの今のワールドは guide から
# 実行条件：どこでも（塔のチャンクが読み込まれていること）
# >/function neofunction:system/adv/tick/quest/40/d3/439
# >/function neofunction:system/rubra/guide
# =/function neofunction:system/rubra/d3/hatch_close

# 内容
data modify storage neofunction:rubra d3.hatch set value 0b
execute in neodimension:ceresta_festa as @e[type=marker,tag=rubra_cradle_hatch,limit=1] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:polished_deepslate_slab replace minecraft:air
execute in neodimension:ceresta_festa as @e[type=marker,tag=rubra_cradle_hatch,limit=1] at @s run playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 0.6
