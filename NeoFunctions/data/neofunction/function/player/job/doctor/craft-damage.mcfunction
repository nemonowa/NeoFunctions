# 命名：doctor/craft-damage
# 説明：ダメージポーション（攻撃用）を1個、アイテムエンティティとして召喚し足元に設置する。
# 説明：giveによる即時インベントリ挿入をやめ、ドロップ形式に変更（同時に大量付与してもインベントリが埋まらないようにする）。
# 説明：内包effectのamplifierはLVLブラケットで上昇する（242の威力段階と同じ5段階に合わせてある）。
# 説明：実際のダメージ量は242/243/244側でscoreboard/damageコマンドにより別途計算されるため、
# 説明：このpotion effect自体はアイテムの見た目・雰囲気付け用（投げた瞬間の直接効果としても機能する）。
# 説明：CustomModelData:1778でこのポーションを判定できる（投げた後も引き継がれることを確認済み）。
# 説明：CustomPotionEffectsのNBT形式は1.20.5未満（items系execute非対応サーバー）を想定した記法。
# >
# =/function neofunction:player/job/doctor/craft-damage

execute as @s[scores={LVL=0..29}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:4,components:{"minecraft:custom_name":{"text":"ダメージポーション","italic":false,"color":"red"},"minecraft:lore":[{"text":"ドクター謹製の攻撃用ポーション","italic":false,"color":"gray"}],"minecraft:custom_model_data":{floats:[1778.0f]},"minecraft:potion_contents":{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},"minecraft:custom_data":{rare:["st"]}}},Motion:[0.0,0.25,0.0],PickupDelay:10s}
execute as @s[scores={LVL=30..49}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:4,components:{"minecraft:custom_name":{"text":"ダメージポーション","italic":false,"color":"red"},"minecraft:lore":[{"text":"ドクター謹製の攻撃用ポーション","italic":false,"color":"gray"}],"minecraft:custom_model_data":{floats:[1778.0f]},"minecraft:potion_contents":{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:1,duration:1}]},"minecraft:custom_data":{rare:["st"]}}},Motion:[0.0,0.25,0.0],PickupDelay:10s}
execute as @s[scores={LVL=50..69}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:4,components:{"minecraft:custom_name":{"text":"ダメージポーション","italic":false,"color":"red"},"minecraft:lore":[{"text":"ドクター謹製の攻撃用ポーション","italic":false,"color":"gray"}],"minecraft:custom_model_data":{floats:[1778.0f]},"minecraft:potion_contents":{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:2,duration:1}]},"minecraft:custom_data":{rare:["st"]}}},Motion:[0.0,0.25,0.0],PickupDelay:10s}
execute as @s[scores={LVL=70..89}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:4,components:{"minecraft:custom_name":{"text":"ダメージポーション","italic":false,"color":"red"},"minecraft:lore":[{"text":"ドクター謹製の攻撃用ポーション","italic":false,"color":"gray"}],"minecraft:custom_model_data":{floats:[1778.0f]},"minecraft:potion_contents":{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:3,duration:1}]},"minecraft:custom_data":{rare:["st"]}}},Motion:[0.0,0.25,0.0],PickupDelay:10s}
execute as @s[scores={LVL=90..}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:4,components:{"minecraft:custom_name":{"text":"ダメージポーション","italic":false,"color":"red"},"minecraft:lore":[{"text":"ドクター謹製の攻撃用ポーション","italic":false,"color":"gray"}],"minecraft:custom_model_data":{floats:[1778.0f]},"minecraft:potion_contents":{potion:"minecraft:harming",custom_effects:[{id:"minecraft:instant_damage",amplifier:4,duration:1}]},"minecraft:custom_data":{rare:["st"]}}},Motion:[0.0,0.25,0.0],PickupDelay:10s}
