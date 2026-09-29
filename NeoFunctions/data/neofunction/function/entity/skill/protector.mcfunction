# 命名：protector
# 説明：10m以内のモブのダメージを引き受ける
# 説明：敵リスト：アイアンガエル(id:689)
# >
# =/function neofunction:entity/skill/protector


execute as @e[tag=enemy,tag=!protector,tag=!protected,distance=..10] run function neofunction:entity/skill/protector_apply
tag @e[tag=vanilla,tag=enemy,tag=!protector,tag=!protected,distance=..10] remove vanilla
tag @e[tag=enemy,tag=!protector,tag=!protected,distance=..10] add protected

execute anchored eyes positioned ^ ^ ^ as @e[tag=protected,distance=..10,limit=4,sort=random] facing entity @s eyes run function neofunction:entity/skill/protector_effect
