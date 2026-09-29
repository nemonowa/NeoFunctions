# 命名：6
# 説明：オフハンドのレア度１アイテムを同じ個数のシャードに換金
# 説明：@s[nbt={Inventory:[{Slot:-106b,Count:1b,tag:{rare:["6"]}}]}]
# 説明：実行者はプレイヤー
# 説明：アマスタNEXUSを用いる /execute as @e[type=minecraft:armor_stand,tag=pos0,limit=1] = execute as 0-0-0-0-1 on vehicle
# >/function neofunction:entity/tick
# =/function neofunction:system/exchange/stardust/6




# マイクラの制限のためプレイヤーのデータの変更はできないため、一度アマスタにコピー
item replace entity @e[type=minecraft:armor_stand,tag=pos0,limit=1] weapon.offhand from entity @s weapon.offhand

data modify entity @e[type=armor_stand,tag=pos0,limit=1] equipment.offhand.id set value "firework_star"

data modify entity @e[type=armor_stand,tag=pos0,limit=1] equipment.offhand.components set value {"minecraft:custom_model_data":{floats:[6.0f]},"minecraft:enchantments":{"minecraft:fortune":1},"minecraft:firework_explosion":{shape:"star",colors:[I;16711748]},"minecraft:lore":[{"text":"第六等級のアイテムに相当する等星結晶","color":"yellow","bold":true,"italic":false},[{"text":"アイテムのレアリティは","color":"white","bold":false,"italic":false},{"text":"星","color":"gold","bold":true},{"text":"の数で九段階に大別されている"}],[{"text":"星の数が多いほど希少でより","color":"white","bold":false,"italic":false},{"text":"高度","color":"blue","bold":true},{"text":"なアイテムとなる"}],{"text":"対応するレアリティのアイテムから抽出し複製に用いる。","color":"white","bold":false,"italic":false},{"text":"レジェンダリー・アイテム：","color":"red","bold":true,"italic":false},{"text":"伝説となり、歴史に残るようなアイテム","color":"red","bold":true,"italic":false},{"text":"偉人や大いなるものが残した道具や武器","color":"red","bold":true,"italic":false},{"text":"Legendary:","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","color":"#FF4328"}],"color":"#FF602C"}],"color":"#FF8330"}],"color":"#FFAC34"}],"color":"#FFCC38"}],"italic":false,"color":"#FFE33B"}],"italic":false,"color":"red","bold":true}],"minecraft:custom_name":[{"text":"rare","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":" 星屑：第六等星 ","underlined":true,"obfuscated":false},{"text":"rare"}],"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments","minecraft:potion_contents","minecraft:stored_enchantments","minecraft:fireworks","minecraft:firework_explosion"]},"minecraft:custom_data":{check:1,rare:["6"]}}

item replace entity @s weapon.offhand from entity @e[type=minecraft:armor_stand,tag=pos0,limit=1] weapon.offhand




# VFX
execute at @s run playsound entity.player.levelup record @s ~ ~ ~ 10 2 1

execute at @s run function neofunction:asset/particle/13

title @s title [{"color":"#CCFFFF","text":"✯"},{"color":"#D5F4DD","text":"ア"},{"color":"#DDE8BB","text":"イ"},{"color":"#E6DD99","text":"テ"},{"color":"#EED277","text":"ム"},{"color":"#F7C655","text":"の"},{"color":"#FFBB33","text":"還"},{"color":"#F7C655","text":"元"},{"color":"#EED277","text":"に"},{"color":"#E6DD99","text":"成"},{"color":"#DDE8BB","text":"功"},{"color":"#CCFFFF","text":"✯"}]