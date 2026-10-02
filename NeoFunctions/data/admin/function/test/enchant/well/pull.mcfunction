# 命名：pull
# 説明：重力井戸（試作）。8 ブロック以内の生き物とアイテムを井戸の中心へ引き寄せる。時間切れで崩壊
# 実行条件：井戸（マーカー）として、その位置で
# >/function admin:test/enchant/well/loop
# =/function admin:test/enchant/well/pull


# 内容
scoreboard players remove @s neo.well 1
particle minecraft:reverse_portal ~ ~ ~ 1.5 1.5 1.5 0.05 20
particle minecraft:dust{color:[0.2,0.0,0.3],scale:2.0} ~ ~ ~ 0.3 0.3 0.3 0 5
tag @s add neo.well_this
execute as @e[distance=1.2..8,type=!player,type=!armor_stand,tag=!friendly] if data entity @s HurtTime at @s facing entity @e[tag=neo.well_this,limit=1] feet positioned ^ ^ ^0.35 if block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~ ~
execute as @e[distance=0.8..8,type=item] at @s facing entity @e[tag=neo.well_this,limit=1] feet positioned ^ ^ ^0.4 if block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~ ~
tag @s remove neo.well_this
execute if score @s neo.well matches ..0 run function admin:test/enchant/well/collapse
