# 命名：nova
# 説明：血盟（試作）の解放。4.5 ブロック以内の生き物に 8 ダメージを与え、自分を回復する
# 実行条件：血の印が 5 つたまった状態で攻撃を当てたプレイヤー
# >/function admin:test/enchant/blood/hit
# =/function admin:test/enchant/blood/nova


# 内容
scoreboard players set @s neo.blood 0
title @s actionbar {"text":"血盟 解放！","color":"red","bold":true}
particle minecraft:dust{color:[0.6,0.0,0.0],scale:2.0} ~ ~1 ~ 2.5 0.8 2.5 0 150
particle minecraft:sweep_attack ~ ~1 ~ 2 0.3 2 0 12
playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2 0.8
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.4
execute as @e[distance=..4.5,type=!player,type=!armor_stand,tag=!friendly] if data entity @s HurtTime run damage @s 8 minecraft:magic
effect give @s minecraft:instant_health 1 0 true
