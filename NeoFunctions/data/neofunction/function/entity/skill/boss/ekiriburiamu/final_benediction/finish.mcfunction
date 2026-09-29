# 命名：finish
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/finish

say 「ならば最後まで、その均衡を示してみせよ。」
effect clear @s resistance
effect clear @s slowness
tag @s remove ekirifinal
tag @s add ekirifinaldone

# 土に戻す
function neofunction:asset/summon/668
function neofunction:asset/summon/668
function neofunction:asset/summon/668
function neofunction:asset/summon/668



#消化
execute in neodimension:ceresta_festa run fill 999 7 1735 1058 7 1796 air replace fire 

# 他属性のタグを除去
tag @s remove ekirifire
tag @s remove ekiriwater
tag @s remove ekiriwind
tag @s remove bomb
tag @s remove water
tag @s remove lev

tag @s add ekiridirt
tag @s add dirtshield