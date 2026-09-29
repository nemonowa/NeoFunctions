# 命名：11
# 説明：ポータルポーション処理
# 説明：@s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:2b}],Tags:["mob"]}]
# 説明：２つのAECポータルを設置してテレポートさせる
# >
# =/function neofunction:asset/skill/admin/11



##amp2・3 
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Radius:2.5f,RadiusOnUse:0f,Duration:100,CustomName:{"text":"in"},potion_contents:{custom_color:523260,custom_effects:[{id:"minecraft:conduit_power",amplifier:32b,duration:2}]}}
execute as @s at @s run summon area_effect_cloud ~ ~9 ~ {Duration:100,Radius:2.5f,RadiusOnUse:0f,CustomName:{"text":"out"},potion_contents:{custom_color:16223234}}
kill @s