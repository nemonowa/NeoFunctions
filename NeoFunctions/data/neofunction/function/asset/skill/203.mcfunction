# 命名：空脚
# 説明：地面に叩きつけた斬撃の衝撃を利用して前方へ跳躍し着地時にダメージを与える技。攻防一体の間合い操作として用いられる。（SP10消費）
# 説明：滞空中（タグskill203が付いている間）に白刃一閃（202）を発動すると空中連携ボーナスが入る。
# >
# =/function neofunction:asset/skill/203


# 内容
execute if entity @s[tag=parkour] run return run say 現在使用できません。

title @s actionbar {"text":"空脚","color":"light_purple","bold":true,"italic":true}

execute at @s unless block ^ ^ ^1 #neofunction:airs run return run title @s actionbar {"text":"壁の中","bold":true,"italic":true}
execute at @s unless block ^ ^ ^2 #neofunction:airs run return run title @s actionbar {"text":"壁の中","bold":true,"italic":true}
execute at @s unless block ^ ^ ^3 #neofunction:airs run return run title @s actionbar {"text":"壁の中","bold":true,"italic":true}
execute at @s unless block ^ ^ ^4 #neofunction:airs run return run title @s actionbar {"text":"壁の中","bold":true,"italic":true}
execute at @s unless block ^ ^ ^5 #neofunction:airs run return run title @s actionbar {"text":"壁の中","bold":true,"italic":true}
tag @s add skill203

execute at @s if block ^ ^ ^5 #neofunction:airs run tp @s ^ ^ ^5

effect give @s minecraft:slow_falling 1 0 true
#effect give @s minecraft:resistance 1 4 true

schedule function neofunction:asset/skill/203-1 10t append

playsound minecraft:entity.player.attack.sweep record @s ~ ~ ~ 2 1.5

scoreboard players remove @s SP 10
