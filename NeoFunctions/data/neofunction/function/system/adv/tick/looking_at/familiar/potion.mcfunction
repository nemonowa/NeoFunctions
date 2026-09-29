# 命名：potion
# 説明：手持ちポーションの効果を対象に付与し、アイテムを1個消費する
#  ・対象は見ていた個体を中心に3m以内の全familiar(呼び出し元のfamiliar.mcfunctionで対象を広げ済み)
#  ・カスタム効果(tag.custom_potion_effects。ビールなどの自作ポーション)を
#    /effect giveをリストの数だけ繰り返して適用(1.20.4のNBT形式は id が文字列)
#  ・バニラのベース種別ポーション(俊敏のポーションなど)はスプラッシュ版で代用できるため対象外
# >/function neofunction:system/adv/tick/looking_at/familiar
# =/function neofunction:system/adv/tick/looking_at/familiar/potion

execute as @e[tag=looked] at @s run tag @e[distance=..2,tag=famliiar] add lookedGroup

execute if data entity @s SelectedItem.components."minecraft:potion_contents".custom_effects run function neofunction:system/adv/tick/looking_at/familiar/potion_custom

#演出(飲ませた感を出す)
execute at @e[tag=lookedGroup] run playsound minecraft:entity.generic.drink master @s
execute at @e[tag=lookedGroup] run particle entity_effect{color:[0.0,0.0,0.0,1.0f]} ~ ~ ~ 0.4 0.4 0.4 0 20 force

#アイテムを1個消費
item modify entity @s weapon.mainhand neofunction:set_nbt/itemcount_decrease
