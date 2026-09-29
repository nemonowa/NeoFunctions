# 命名：42
# 説明：アカンパニーポーション:使用すると付近小範囲のプレイヤー全員を解放済みのランダムなワープポイントに転移させる。
# >/function neofunction:consume_item/42
# =/function neofunction:system/adv/consume_item/42


## 内容
execute as @a[distance=..4] at @s run function neofunction:system/adv/consume_item/42_tp
tellraw @a [{"text":"<","color":"white"},{"selector":"@p","color":"white"},{"text":"院> アカンパニー！オン！","color":"white",hover_event:{"action":"show_text",value:"小範囲のプレイヤー全員が範囲外の最寄りのプレイヤーに転移する。"}}]
