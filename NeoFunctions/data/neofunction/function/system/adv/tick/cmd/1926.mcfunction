# 命名：1926
# 説明：ルブラのつるはし（3 段）をメインハンドに持っているあいだ：セレスタフェスタのメサでは段に合った鉱石を掘れるようにし、メサの外では掘れないようにする
# 実行条件：実行者・実行位置 プレイヤー
# >/advancement neofunction:tick/cmd/1926
# =/function neofunction:system/adv/tick/cmd/1926

# 内容
execute if dimension neodimension:ceresta_festa if biome ~ ~ ~ #neofunction:mesa_all run return run execute unless items entity @s weapon.mainhand *[minecraft:can_break] run item modify entity @s weapon.mainhand neofunction:rubra/pick_on_3
execute if items entity @s weapon.mainhand *[minecraft:can_break] run item modify entity @s weapon.mainhand neofunction:rubra/pick_off
