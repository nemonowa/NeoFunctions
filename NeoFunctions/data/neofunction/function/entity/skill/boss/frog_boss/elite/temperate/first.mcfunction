# 命名：first
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/elite/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/first

tp @s 652 -52 2138 0 0
data modify entity @s variant set value "temperate"
# 【変更：2026-09-27 26.3対応】ArmorItems[] は部位ごとの equipment に、display.color は dyed_color に変わったため部位ごとに設定する（空き部位は除外）
execute on passengers if data entity @s equipment.feet run data modify entity @s equipment.feet.components."minecraft:dyed_color" set value 16756224
execute on passengers if data entity @s equipment.legs run data modify entity @s equipment.legs.components."minecraft:dyed_color" set value 16756224
execute on passengers if data entity @s equipment.chest run data modify entity @s equipment.chest.components."minecraft:dyed_color" set value 16756224
execute on passengers if data entity @s equipment.head run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 16756224
execute at @s run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 100 0.7
execute on passengers run item replace entity @s weapon.mainhand with carrot_on_a_stick
