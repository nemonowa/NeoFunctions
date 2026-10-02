# 命名：warp
# 説明：影縫い（試作）。印の付いた相手の背後 1.5 ブロックへ回り込み、相手の方を向く。相手は鈍足になる
# 実行条件：しゃがみ攻撃したプレイヤー（印を付けた直後）
# >/enchantment neofunction:test/shadow
# =/function admin:test/enchant/shadow/warp


# 内容
particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 15
execute at @e[tag=neo.shadow,limit=1] rotated as @e[tag=neo.shadow,limit=1] rotated ~ 0 positioned ^ ^ ^-1.5 if block ~ ~ ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run tp @s ~ ~ ~ facing entity @e[tag=neo.shadow,limit=1] eyes
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 30
effect give @e[tag=neo.shadow] minecraft:slowness 2 2
tag @e[tag=neo.shadow] remove neo.shadow
