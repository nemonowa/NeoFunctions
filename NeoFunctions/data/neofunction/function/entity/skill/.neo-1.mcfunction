# 命名：.neo-1
# 説明：tagを持つエンティティを対象(常時実行するようなスキル)
# 説明：ここのコマンド数をむやみに増やすな！丁寧に子関数に逃がせ
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/.neo-1



#################################### 追加条件：どのタグにも該当しなければvanillaを付けて除外（個体数多いのから並べる）
#execute unless entity @s[tag=air] unless entity @s[tag=downer] unless entity @s[tag=upper] unless entity @s[tag=fly1] unless entity @s[tag=boss] unless entity @s[tag=fly0] unless entity @s[tag=breakpearl] unless entity @s[tag=leader] unless entity @s[tag=roll] unless entity @s[tag=fly2] unless entity @s[tag=fly3] unless entity @s[tag=fly4] unless entity @s[tag=light] unless entity @s[tag=look] unless entity @s[tag=copy] unless entity @s[tag=copy1] unless entity @s[tag=copy2] unless entity @s[tag=beacon] unless entity @s[tag=sikisai] unless entity @s[tag=torch] unless entity @s[tag=sansa] unless entity @s[tag=sansa2] unless entity @s[tag=protector] unless entity @s[tag=protected] unless entity @s[tag=lava_fishing] unless entity @s[tag=upfurnace] unless entity @s[tag=superdisplay] unless entity @s[tag=skill212AEC] unless entity @s[tag=aj.global.root] run return run tag @s add vanilla

#################################### 追加条件：どのタグにも該当しなければ関数を抜ける
execute if entity @s[tag=!air,tag=!leader,tag=!roll,tag=!fly2,tag=!fly3,tag=!look,tag=!beacon,tag=!sikisai,tag=!torch,tag=!sansa,tag=!sansa2,tag=!protector,tag=!protected,tag=!lava_fishing,tag=!upfurnace,tag=!superdisplay,tag=!skill212AEC,tag=!aj.global.root,tag=!familiarshot] run return run execute if entity @s[tag=!fly1,tag=!downer,tag=!upper,tag=!fly0,tag=!boss,tag=check] run tag @s add vanilla

#################################### 追加条件：実行者の64m以内にプレイヤーがいなければ関数を抜ける
execute at @s unless entity @a[distance=..64,limit=1] run return 0

# 自身の座標が空気になると消える(tag=air) 
execute if entity @s[tag=air] run return run execute at @s if block ~ ~ ~ minecraft:air run function neofunction:entity/skill/air

# leader
execute if entity @s[tag=leader] run function neofunction:entity/skill/leader

# roll
execute if entity @s[tag=roll] run function neofunction:entity/skill/roll

# fly2 振幅0.5m 周期1s
execute if entity @s[tag=fly2] run function neofunction:entity/skill/fly2

# fly3 振幅1m 周期2s
execute if entity @s[tag=fly3] run function neofunction:entity/skill/fly3

# fly4 近寄ると浮遊するグラビティなリフト
# execute if entity @s[tag=fly4] run function neofunction:entity/skill/fly4

# light
# execute if entity @s[tag=light] run function neofunction:entity/skill/light

# look displayなどをビークルの視点と一致させ続ける
execute if entity @s[tag=look] at @s on passengers run tp @s ~ ~ ~ ~ 0

# copy
# execute if entity @s[tag=copy] at @s run function neofunction:entity/skill/copy

# copy1
# execute if entity @s[tag=copy1] at @s run function neofunction:entity/skill/copy1

# copy2
# execute if entity @s[tag=copy2] at @s run function neofunction:entity/skill/copy2

# beacon
execute if entity @s[tag=beacon] at @s run particle dust{color:[1,0,0],scale:2} ~ ~1 ~ 0 9 0 0 9 force

#arrows
execute if entity @s[type=#minecraft:arrows] at @s run function neofunction:entity/skill/arrows

# objective
#execute if entity @s[tag=villageobjective] at @s run function neofunction:entity/skill/objective

# protector 周りのモブのダメージを代わりに受ける
execute if entity @s[tag=protector] at @s run function neofunction:entity/skill/protector

# protected protectorの近くにいるenemy
execute if entity @s[tag=protected] at @s run function neofunction:entity/skill/protected

# lava_fishing 溶岩釣りするぞ
execute if entity @s[tag=lava_fishing] at @s run function neofunction:entity/skill/lava_fishing/.neo

# upfurnace ~ ~-1 ~の竈をブースト
execute if entity @s[tag=upfurnace] at @s run function neofunction:entity/skill/upfurnace

# superdisplay ディスプレイのright_rotationがtranslationまで反映するようになる left_rotationは変更するとバグるので注意
execute if entity @s[tag=superdisplay] unless data entity @s transformation{right_rotation:[0f,0f,0f,1f]} run function neofunction:entity/skill/superdisplay

# skill212AEC
execute if entity @s[tag=skill212AEC] at @s run function neofunction:asset/skill/212-1

# AnimatedJava
execute if entity @s[tag=aj.global.root] run function neofunction:entity/skill/aj/.neo

#ペットのスノーゴーレムの雪玉
execute if entity @s[tag=familiarshot] at @s run function neofunction:entity/skill/familiarshot




