# 命名：living
# 説明：60s周期でリビングメイルの強化or召喚
# >/function neofunction:clock/60_second
# =/function neofunction:entity/skill/living

#内容30s毎にスキル発動

#スキルが発動するたびに無敵になる
effect give @s minecraft:resistance infinite 4 true


#周辺32mのリビングメイルを招集
execute as @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/201"}] run tp @s @e[tag=living,limit=1]
execute as @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/202"}] run tp @s @e[tag=living,limit=1]
execute as @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/203"}] run tp @s @e[tag=living,limit=1]

#魂繋ぎの降霊儀式 リビングメイルが存在しなかったら確定召喚

execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/201"}] run function neofunction:asset/summon/622

execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/202"}] run function neofunction:asset/summon/623

execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/203"}] run function neofunction:asset/summon/203

execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/201"}] run tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"魂繋ぎの降霊儀式Ⅰ","bold":true,hover_event:{"action":"show_text","value":[{"text":"彷徨う硬皮鎧を最大5体まで召喚しダメージ耐性を得る"}]}},{"text":"を発動した！"}]
execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/202"}] run tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"魂繋ぎの降霊儀式Ⅱ","bold":true,hover_event:{"action":"show_text","value":[{"text":"彷徨う黄金鎧を最大3体まで召喚しダメージ耐性を得る"}]}},{"text":"を発動した！"}]
execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/203"}] run tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"魂繋ぎの降霊儀式Ⅲ","bold":true,hover_event:{"action":"show_text","value":[{"text":"彷徨う白金鎧を最大1体まで召喚しダメージ耐性を得る"}]}},{"text":"を発動した！"}]

execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/201"}] run playsound block.beacon.activate record @a[distance=..32] ~ ~ ~ 2.0 2.0 1.0
execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/202"}] run playsound block.beacon.activate record @a[distance=..32] ~ ~ ~ 2.0 2.0 1.0
execute unless entity @e[distance=..32,nbt={DeathLootTable:"neofunction:asset/summon/203"}] run playsound block.beacon.activate record @a[distance=..32] ~ ~ ~ 2.0 2.0 1.0

#既に組み込み済み呪纏の律動

#playsound
playsound block.enchantment_table.use record @a[distance=..32] ~ ~ ~ 2.0 1.9 1.0
playsound block.enchantment_table.use record @a[distance=..32] ~ ~ ~ 2.0 1.9 1.0
playsound block.enchantment_table.use record @a[distance=..32] ~ ~ ~ 2.0 1.9 1.0

#てるろー
tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"呪纏の律動","bold":true,hover_event:{"action":"show_text","value":[{"text":"32m以内のリビングメイルに強力なバフを付与"}]}},{"text":"を発動した！"}]
