# 命名：first
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/warm/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/warm/first

data modify entity @s NoAI set value 0b
execute on passengers run item replace entity @s weapon.mainhand with bow[minecraft:enchantments={"minecraft:punch":5,"minecraft:power":15}]
data modify entity @s variant set value "warm"
# 【変更：2026-09-27 26.3対応】ArmorItems[] は部位ごとの equipment に、display.color は dyed_color に変わったため部位ごとに設定する（空き部位は除外）
execute on passengers if data entity @s equipment.feet run data modify entity @s equipment.feet.components."minecraft:dyed_color" set value 15006975
execute on passengers if data entity @s equipment.legs run data modify entity @s equipment.legs.components."minecraft:dyed_color" set value 15006975
execute on passengers if data entity @s equipment.chest run data modify entity @s equipment.chest.components."minecraft:dyed_color" set value 15006975
execute on passengers if data entity @s equipment.head run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 15006975
#execute at @s run title @a[distance=..32] title {"text":"モードチェンジ","color": "green"}
#execute at @s run title @a[distance=..32] subtitle {"text":"§e§lモード：§7§l§nスリンガー","bold":true}
execute at @s run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 100 0.7

