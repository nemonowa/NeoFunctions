# 命名：92
# 説明：アカンパニーポーション
# 実行条件：進捗達成時
# >(=/function neofunction:system/effect/inv/0)(/advancement grant @s only neofunction:.skill/1)
# =/function neofunction:asset/skill/92


## 内容
##amp2 ポータルポーション
execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:2b}]}}] run summon area_effect_cloud ~ ~ ~ {Radius:2.5f,RadiusOnUse:0f,Duration:120,CustomName:{"text":"in"},potion_contents:{custom_color:523260,custom_effects:[{id:"minecraft:invisibility",amplifier:3b,duration:2}]}}
execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:2b}]}}] run summon area_effect_cloud ~ ~10 ~ {Radius:2.5f,RadiusOnUse:0f,Duration:120,CustomName:{"text":"out"},potion_contents:{custom_color:16223234}}
execute as @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:2b}]}}] run tag @s add del
#演出
#function neofunction:asset/particle/0


#処理が終わったら透明化を消す
effect clear @s minecraft:invisibility

## 消費MP
#scoreboard players remove @s SP 8

## クールタイム
#scoreboard players add @s CT 8

## ゲージ 半分/4 くらいの空腹
## effect give @s hunger 1 10 false



## 再使用のために進捗剥奪
advancement revoke @s only neofunction:effects_changed/inv/92

