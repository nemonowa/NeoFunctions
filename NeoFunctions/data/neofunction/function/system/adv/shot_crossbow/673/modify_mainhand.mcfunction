# 命名：modify_mainhand
# 説明：システム
# 説明：進捗達成時（ベットで寝る
# >/function neofunction:slept_in_bed
# =/function neofunction:system/adv/shot_crossbow/673/modify_mainhand

## 内容
#装弾数調整
item modify entity @a[nbt={SelectedItem:{components:{"minecraft:custom_name":{"text":"GUN <0>","bold":true}}}}] weapon.mainhand neofunction:gun/673/6
item modify entity @a[nbt={SelectedItem:{components:{"minecraft:custom_name":{"text":"GUN <1>","bold":true}}}}] weapon.mainhand neofunction:gun/673/0
item modify entity @a[nbt={SelectedItem:{components:{"minecraft:custom_name":{"text":"GUN <2>","bold":true}}}}] weapon.mainhand neofunction:gun/673/1
item modify entity @a[nbt={SelectedItem:{components:{"minecraft:custom_name":{"text":"GUN <3>","bold":true}}}}] weapon.mainhand neofunction:gun/673/2
item modify entity @a[nbt={SelectedItem:{components:{"minecraft:custom_name":{"text":"GUN <4>","bold":true}}}}] weapon.mainhand neofunction:gun/673/3
item modify entity @a[nbt={SelectedItem:{components:{"minecraft:custom_name":{"text":"GUN <5>","bold":true}}}}] weapon.mainhand neofunction:gun/673/4
item modify entity @a[nbt={SelectedItem:{components:{"minecraft:custom_name":{"text":"GUN <6>","bold":true}}}}] weapon.mainhand neofunction:gun/673/5




## 再使用のために進捗剥奪
advancement revoke @a only neofunction:shot_crossbow/673