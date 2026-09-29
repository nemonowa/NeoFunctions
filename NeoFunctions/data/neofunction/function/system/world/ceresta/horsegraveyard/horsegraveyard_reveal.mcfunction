 # 前兆演出の後、本体(骨馬)を出現させる
particle minecraft:soul 926.38 44.00 1509.30 0.5 1 0.5 0.02 60
playsound minecraft:entity.horse.death ambient @a 926.38 44.00 1509.30 1 0.6
playsound minecraft:entity.wither.spawn hostile @a 926.38 44.00 1509.30 1 0.8

execute in neodimension:ceresta_festa run summon minecraft:skeleton_horse 926.38 44.00 1509.30 {CustomNameVisible:1b,Health:5f,Tame:1b,SkeletonTrap:1b,Tags:["lv2"],CustomName:{"text":"亡霊馬・月影","color":"dark_purple","bold":true,"italic":true},Glowing:1b,attributes:[{id:"minecraft:max_health",base:5}],equipment:{feet:{id:"minecraft:acacia_trapdoor",count:1,components:{"minecraft:enchantments":{"minecraft:depth_strider":3},"minecraft:attribute_modifiers":[{type:"movement_speed",id:"neofunction:967a4905-5c1e-4e3c-b165-0a6461ce7f01",amount:0.3,operation:"add_value",slot:"feet"}]}},saddle:{id:"minecraft:saddle",count:1}}}

# 演出が終わったのでランプを消して次回また挑戦できるようにする
function neofunction:system/world/ceresta/horsegraveyard/reset_lamps
