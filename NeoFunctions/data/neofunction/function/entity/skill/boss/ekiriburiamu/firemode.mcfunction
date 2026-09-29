# 命名：=/function neofunction:entity/skill/boss/ekiriburiamu/firemode
# 説明：エキリブリアムの加護チェンジ
# 説明：呼び出し >/function neofunction:entity/skill/clock/60s
# 実行条件：60s毎にエキリブリアムに実行
# >
# =/function neofunction:entity/skill/boss/ekiriburiamu/firemode

#内容

say 「炎は、留まることを知らぬ。」

playsound item.firecharge.use record @a[distance=..32] ~ ~ ~ 2.0 0.5
#execute in neodimension:ceresta_festa run tp @s 1029 8.00 1765

item replace entity @s[tag=ekiriburiamu] armor.chest with leather_chestplate[minecraft:dyed_color=16711680,minecraft:enchantments={"minecraft:fire_protection":4}] 1
#item replace entity @e[limit=1,tag=ekiriburiamu] weapon.mainhand with carrot_on_a_stick[minecraft:custom_model_data={floats:[1284.0f]}] 1

function neofunction:asset/summon/660
function neofunction:asset/summon/660
function neofunction:asset/summon/660
function neofunction:asset/summon/660


# 他属性のタグを除去
tag @s remove ekiriwater
tag @s remove ekiriwind
tag @s remove ekiridirt
tag @s remove water
tag @s remove lev
tag @s remove dirtshield

tag @s add ekirifire
tag @s add bomb