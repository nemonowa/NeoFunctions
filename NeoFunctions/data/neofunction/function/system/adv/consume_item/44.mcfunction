# 命名：44
# 説明：九死と回生の妙薬
# >/function neofunction:consume_item/44
# =/function neofunction:system/adv/consume_item/44


# 内容：
say aaa
execute unless entity @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:91b}]}] run return 1

tellraw @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:91b}]}] [{"text":"<","color":"white"},{"selector":"@p","color":"white"},{"text":"> 九死と回生の妙薬","color":"white",hover_event:{"action":"show_text",value:"9秒間カウント付きの無敵状態を得るカウント中は1秒に一回10%の確率でキルされる10秒後にまだ立っていればHPとSPが全回復する"}}]

effect give @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:91b}]}] minecraft:resistance 1 4 false

execute as @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:91b}]}] if predicate neofunction:random_chance/10 run trigger kill set 3

schedule function neofunction:system/adv/consume_item/44 1s append


#give @p minecraft:potion[minecraft:custom_name=[{"text":"☯","color":"light_purple","bold":false,"italic":false},{"text":"九死","color":"dark_red","bold":true,"italic":false},{"text":"と","color":"blue","bold":true,"italic":false},{"text":"回生","color":"green","bold":true,"italic":false},{"text":"の妙薬","color":"blue","bold":true,"italic":false},{"text":"☯","color":"light_purple","bold":false,"italic":false}],minecraft:lore=[[{"text":"9秒間カウント付きの","color":"dark_gray","bold":false,"italic":false},{"text":"無敵状態","color":"yellow","bold":true,"italic":false},{"text":"を得る","color":"dark_gray","bold":false,"italic":false}],[{"text":"カウント中は1秒に一回10%の確率で","color":"dark_gray","bold":false,"italic":false},{"text":"キル","color":"dark_red","bold":true,"italic":false},{"text":"される","color":"dark_gray","bold":false,"italic":false}],{"text":"10秒後にまだ立っていればHPとSPが全回復する","color":"dark_gray","bold":false,"italic":false},{"text":"-۞-スペルポーション-۞-","color":"light_purple","bold":true,"italic":false,"underlined":true}],minecraft:enchantments={"minecraft:unbreaking":1},minecraft:custom_model_data={floats:[44.0f]},minecraft:potion_contents={custom_color:7710760,custom_effects:[{id:"minecraft:resistance",amplifier:4b,duration:180},{id:"minecraft:glowing",amplifier:91b,duration:180}]},minecraft:tooltip_display={hidden_components:["minecraft:enchantments","minecraft:potion_contents"]},minecraft:custom_data={rare:["3"]}] 1




