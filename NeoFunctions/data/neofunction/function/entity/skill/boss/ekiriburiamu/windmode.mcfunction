# 命名：=/function neofunction:entity/skill/boss/ekiriburiamu/windmode
# 説明：エキリブリアムの加護チェンジ
# 説明：呼び出し >/function neofunction:entity/skill/clock/60s
# 実行条件：60s毎にエキリブリアムに実行
# >
# =/function neofunction:entity/skill/boss/ekiriburiamu/windmode

#内容

say 「疾風は、やがて大嵐となる。」

playsound entity.breeze.wind_burst record @a[distance=..32] ~ ~ ~ 2.0 2.0
#execute in neodimension:ceresta_festa run tp @s 1029 8.00 1765

item replace entity @s[tag=ekiriburiamu] armor.chest with leather_chestplate[minecraft:dyed_color=5766966,minecraft:enchantments={"minecraft:blast_protection":4}] 1
#item replace entity @e[limit=1,tag=ekiriburiamu] weapon.mainhand with carrot_on_a_stick[minecraft:custom_model_data={floats:[1288.0f]}] 1

function neofunction:asset/summon/672
function neofunction:asset/summon/672
function neofunction:asset/summon/672
function neofunction:asset/summon/672



#消化
execute in neodimension:ceresta_festa run fill 999 7 1735 1058 7 1796 air replace fire 


# 他属性のタグを除去
tag @s remove ekiriwater
tag @s remove ekirifire
tag @s remove ekiridirt
tag @s remove water
tag @s remove bomb
tag @s remove dirtshilesd

tag @s add ekiriwind
tag @s add lev