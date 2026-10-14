# 命名：pick_on
# 説明：【追加：2026-10-14 ルブラ編】メサにいる：まだ can_break が無ければ、つるはしの段（custom_data tier）に合わせて付ける（1 紅鉄の鉱石、2 ＋星鉄の鉱石、3 ＋星核の鉱石）
# 実行条件：実行者 プレイヤー（メインハンドにルブラのつるはし、メサの中）
# >/function neofunction:system/rubra/mine/pick
# =/function neofunction:system/rubra/mine/pick_on

# 内容
execute if items entity @s weapon.mainhand *[minecraft:can_break] run return 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{tier:1b}] run return run item modify entity @s weapon.mainhand neofunction:rubra/pick_on_1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{tier:2b}] run return run item modify entity @s weapon.mainhand neofunction:rubra/pick_on_2
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{tier:3b}] run return run item modify entity @s weapon.mainhand neofunction:rubra/pick_on_3
