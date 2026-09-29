# 命名：modify_offhand
# 説明：システム
# 説明：進捗達成時（ベットで寝る
# >/function neofunction:slept_in_bed
# =/function neofunction:system/adv/shot_crossbow/673/modify_offhand

## 内容
#装弾数調整
item modify entity @a[advancements={neofunction:shot_crossbow/gun=true}] weapon.offhand neofunction:reload/gun/1
item modify entity @a[advancements={neofunction:shot_crossbow/gun=true}] weapon.offhand neofunction:reload/gun/2
item modify entity @a[advancements={neofunction:shot_crossbow/gun=true}] weapon.offhand neofunction:reload/gun/3
item modify entity @a[advancements={neofunction:shot_crossbow/gun=true}] weapon.offhand neofunction:reload/gun/4
item modify entity @a[advancements={neofunction:shot_crossbow/gun=true}] weapon.offhand neofunction:reload/gun/5
item modify entity @a[advancements={neofunction:shot_crossbow/gun=true}] weapon.offhand neofunction:reload/gun/6

## 再使用のために進捗剥奪
advancement revoke @a[advancements={neofunction:shot_crossbow/gun=true}] only neofunction:shot_crossbow/gun