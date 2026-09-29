# 命名：first
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/cold/.neo
# =/function neofunction:entity/skill/boss/frog_boss/mode/cold/first

data modify entity @s NoAI set value 0b
execute on passengers run item replace entity @s weapon.mainhand with trident[minecraft:attribute_modifiers=[{type:"attack_damage",id:"neofunction:808b2547-fca7-4b90-ba41-7a73d1ebd1ec",amount:-5.0,operation:"add_value",slot:"mainhand"}]]
data modify entity @s variant set value "cold"
# 【変更：2026-09-27 26.3対応】ArmorItems[] は部位ごとの equipment に、display.color は dyed_color に変わったため部位ごとに設定する（空き部位は除外）
execute on passengers if data entity @s equipment.feet run data modify entity @s equipment.feet.components."minecraft:dyed_color" set value 1384727
execute on passengers if data entity @s equipment.legs run data modify entity @s equipment.legs.components."minecraft:dyed_color" set value 1384727
execute on passengers if data entity @s equipment.chest run data modify entity @s equipment.chest.components."minecraft:dyed_color" set value 1384727
execute on passengers if data entity @s equipment.head run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 1384727
#execute at @s run title @a[distance=..32] title {"text":"モードチェンジ","color": "green"}
#execute at @s run title @a[distance=..32] subtitle {"text":"§e§lモード：§2§l§nストライカー","bold":true}
execute at @s run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 100 0.7

