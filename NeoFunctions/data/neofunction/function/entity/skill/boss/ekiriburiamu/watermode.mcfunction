# 命名：=/function neofunction:entity/skill/boss/ekiriburiamu/watermode
# 説明：エキリブリアムの加護チェンジ
# 説明：呼び出し >/function neofunction:entity/skill/clock/60s
# 実行条件：60s毎にエキリブリアムに実行
# >
# =/function neofunction:entity/skill/boss/ekiriburiamu/watermode

#内容

say 「水面に映るものが、真実とは限らぬ。」

playsound ambient.underwater.enter record @a[distance=..32] ~ ~ ~ 2.0 0.5
#execute in neodimension:ceresta_festa run tp @s 1029 8.00 1765

item replace entity @s[tag=ekiriburiamu] armor.chest with leather_chestplate[minecraft:dyed_color=2883576,minecraft:enchantments={"minecraft:projectile_protection":4}] 1
#item replace entity @e[limit=1,tag=ekiriburiamu] weapon.mainhand with carrot_on_a_stick[minecraft:custom_model_data={floats:[1286.0f]}] 1

function neofunction:asset/summon/664
function neofunction:asset/summon/664
function neofunction:asset/summon/664
function neofunction:asset/summon/664



#消化
execute in neodimension:ceresta_festa run fill 999 7 1735 1058 7 1796 air replace fire 

# 他属性のタグを除去
tag @s remove ekirifire
tag @s remove ekiriwind
tag @s remove ekiridirt
tag @s remove bomb
tag @s remove lev
tag @s remove dirtshield

tag @s add ekiriwater
tag @s add water