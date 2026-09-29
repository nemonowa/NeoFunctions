# 命名：powder_apply
# 説明：パウダー系アイテム共通の効果付与処理。
#       プレイヤーのLVLスコアに応じて効果レベル(amplifier)を決定し、
#       familiar_powder.effects(配列)に入っている効果を全て対象に永続付与、アイテムを1個消費する。
#       LVL 15以下→Lv1 / 30以上→Lv2 / 45以上→Lv3 / 60以上→Lv4(頭打ち)
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/powder_apply

#LVLスコアからamplifierを算出(0=Lv1 … 3=Lv4)
scoreboard players set @s powderAmp 0
execute if score @s LVL matches 30.. run scoreboard players set @s powderAmp 1
execute if score @s LVL matches 45.. run scoreboard players set @s powderAmp 2
execute if score @s LVL matches 60.. run scoreboard players set @s powderAmp 3
execute store result storage neofunction:temp familiar_powder.amp int 1 run scoreboard players get @s powderAmp

#effects配列に入っている効果を1つずつ付与
function neofunction:system/adv/player_interacted_with_entity/familiar/.powder_effect_loop

#演出
execute at @e[tag=interacted] run playsound minecraft:entity.generic.eat master @s
execute at @e[tag=interacted] run particle entity_effect{color:[0.0,0.0,0.0,1.0f]} ~ ~ ~ 0.4 0.4 0.4 0 20 force

#アイテムを1個消費
item modify entity @s weapon.mainhand neofunction:set_nbt/itemcount_decrease
