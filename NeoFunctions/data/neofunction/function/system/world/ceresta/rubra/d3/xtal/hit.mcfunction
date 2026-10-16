# 命名：hit
# 説明：結晶が叩かれた：何も起きない（岩に食いこんでいる）。守り石で抜くことを促す
# 実行条件：実行者・実行位置 叩かれた interaction（タグ rubra_xtalhit）
# >/function neofunction:system/world/ceresta/rubra/d3/xtal/loop
# =/function neofunction:system/world/ceresta/rubra/d3/xtal/hit

# 内容
data remove entity @s attack
playsound minecraft:block.amethyst_block.hit block @a[distance=..16] ~ ~ ~ 1 0.6
title @a[distance=..6] actionbar {"text":"結晶は岩に深く食いこんでいて、叩いても欠けもしない。（守り石を手に持って右クリック）","color":"gray"}
