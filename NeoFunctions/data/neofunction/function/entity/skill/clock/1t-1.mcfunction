# 命名：1t
# 説明：tagを持つエンティティを対象(常時実行するようなスキル)
# 説明：毎tick。tag=!vanillaのエンティティ プレイヤーから64m制限あります
# >/function neofunction:entity/skill/clock/1t
# =/function neofunction:entity/skill/clock/1t-1


# 全体
# 自身の座標が空気になると消える(tag=air)
execute if entity @s[tag=air] as @s[tag=air] at @s if block ~ ~ ~ minecraft:air run function neofunction:entity/skill/air


# エンダーパール破壊処理
execute if entity @s[tag=breakpearl] as @s[tag=breakpearl] at @s if entity @e[type=ender_pearl,distance=..32] run function neofunction:entity/skill/breakpearl

# leader
execute if entity @s[tag=leader] as @s[tag=leader] run function neofunction:entity/skill/leader

# roll
execute if entity @s[tag=roll] as @s[tag=roll] run function neofunction:entity/skill/roll

# fly2 振幅0.5m 周期1s
execute if entity @s[tag=fly2] as @s[tag=fly2] run function neofunction:entity/skill/fly2

# fly3 振幅1m 周期2s
execute if entity @s[tag=fly3] as @s[tag=fly3] run function neofunction:entity/skill/fly3

# fly4 近寄ると浮遊するグラビティなリフト
execute if entity @s[tag=fly4] as @s[tag=fly4] run function neofunction:entity/skill/fly4

# light
execute if entity @s[tag=light] as @s[tag=light] run function neofunction:entity/skill/light

# look displayなどをビークルの視点と一致させ続ける
execute if entity @s[tag=look] as @s[tag=look] at @s on passengers run tp @s ~ ~ ~ ~ 0

# copy
execute if entity @s[tag=copy] as @s[tag=copy] at @s run function neofunction:entity/skill/copy

# copy1
execute if entity @s[tag=copy1] as @s[tag=copy1] at @s run function neofunction:entity/skill/copy1

# copy2
execute if entity @s[tag=copy2] as @s[tag=copy2] at @s run function neofunction:entity/skill/copy2

# beacon
execute if entity @s[tag=beacon] as @s[tag=beacon] at @s run particle dust{color:[1,0,0],scale:2} ~ ~1 ~ 0 9 0 0 9 force

# sikisai
execute if entity @s[tag=sikisai] as @s[tag=sikisai,nbt={inGround:0b}] at @s run particle dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0 0 0 1 5 force

# torch 
execute if entity @s[tag=torch] as @s[tag=torch,nbt={inGround:1b}] at @s run function neofunction:entity/skill/torch

# sansa
execute if entity @s[tag=sansa] as @s[tag=sansa] run function neofunction:entity/skill/sansa3
execute if entity @s[tag=sansa2] as @s[tag=sansa2] run function neofunction:entity/skill/sansa3

# objective
#execute if entity @s[tag=villageobjective] as @s[tag=villageobjective] at @s run function neofunction:entity/skill/objective

# protector 周りのモブのダメージを代わりに受ける
execute if entity @s[tag=protector] as @s[tag=protector] at @s run function neofunction:entity/skill/protector

# protected protectorの近くにいるenemy
execute if entity @s[tag=protected] as @s[tag=protected] at @s run function neofunction:entity/skill/protected

# lava_fishing 溶岩釣りするぞ
execute if entity @s[tag=lava_fishing] as @s[tag=lava_fishing] at @s run function neofunction:entity/skill/lava_fishing/.neo

# upfurnace ~ ~-1 ~の竈をブースト
execute if entity @s[tag=upfurnace] as @s[tag=upfurnace] at @s if block ~ ~ ~ #neofunction:air run kill @e[tag=upfurnacevis]
execute if entity @s[tag=upfurnace] as @s[tag=upfurnace] at @s if block ~ ~ ~ #neofunction:air run kill @s
execute if entity @s[tag=upfurnace,tag=activate] as @s[tag=upfurnace,tag=activate] at @s run function neofunction:entity/skill/upfurnace

# superdisplay ディスプレイのright_rotationがtranslationまで反映するようになる left_rotationは変更するとバグるので注意
execute if entity @s[tag=superdisplay] unless data entity @s transformation{right_rotation:[0f,0f,0f,1f]} run function neofunction:entity/skill/superdisplay

# skill212AEC
execute if entity @s[tag=skill212AEC] at @s run function neofunction:asset/skill/212-1
