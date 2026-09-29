# 命名：43
# 説明：ランデブーポーション:周囲のプレイヤーを、近くのプレイヤーまたはマーカーポイントにワープ
# >/function neofunction:consume_item/41
# =/function neofunction:system/adv/consume_item/43


## 内容
teleport @a[distance=..4] @e[tag=marked,limit=1,sort=nearest,distance=..256]
tellraw @a [{"text":"<","color":"white"},{"selector":"@p","color":"white"},{"text":"院> アカンパニー！オン！","color":"white",hover_event:{"action":"show_text",value:"小範囲のプレイヤー全員が範囲外の最寄りのプレイヤーに転移する。"}}]