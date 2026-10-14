# 命名：pick
# 説明：【追加：2026-10-14 ルブラ編】ルブラのつるはしを持っているあいだ（毎 tick）：セレスタフェスタのメサ（neodimension:cerestafesta/mesa）にいれば、段に合った can_break を付ける。それ以外では can_break を外す（変わるときだけ書き換える）
# 実行条件：実行者・実行位置 プレイヤー（メインハンドにルブラのつるはし）
# >/advancement neofunction:tick/item/rubra_pick
# =/function neofunction:system/rubra/mine/pick

# 内容
execute if dimension neodimension:ceresta_festa if biome ~ ~ ~ neodimension:cerestafesta/mesa run return run function neofunction:system/rubra/mine/pick_on
execute if items entity @s weapon.mainhand *[minecraft:can_break] run item modify entity @s weapon.mainhand neofunction:rubra/pick_off
