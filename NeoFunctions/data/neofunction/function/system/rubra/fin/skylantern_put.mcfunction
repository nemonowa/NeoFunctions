# 命名：skylantern_put
# 説明：【追加：2026-10-13 ルブラ編】灯籠の見た目（item_display のランタン、明るさ 15）を出す。火を灯す音と粒
# 実行条件：実行位置 灯籠の目印。引数 x・z（ずれ）、r（向き）
# >/function neofunction:system/rubra/fin/skylantern_one
# =/function neofunction:system/rubra/fin/skylantern_put

# 内容
$summon item_display ~$(x) ~1.2 ~$(z) {Tags:["check","rubra_fin","rubra_skyl"],Rotation:[$(r)f,0f],item:{id:"minecraft:lantern",count:1},brightness:{block:15,sky:15},teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},view_range:4.0f}
$particle minecraft:flame ~$(x) ~1.2 ~$(z) 0.2 0.2 0.2 0.02 6 normal
$playsound minecraft:item.flintandsteel.use ambient @a[distance=..48] ~$(x) ~1 ~$(z) 0.6 1.2
