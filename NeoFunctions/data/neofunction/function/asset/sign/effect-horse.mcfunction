# 命名：effect-horse
# 説明：馬招集スペルサイン
# >
# =/function neofunction:asset/sign/effect-horse


# 付近の馬を回復
setblock ~ ~ ~ birch_sign[rotation=12,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"italic":false,"underlined":true,click_event:{"action":"run_command",command:"effect give @e[type=horse,distance=..64,nbt={SaddleItem:{id:\"minecraft:saddle\"}}] minecraft:regeneration 8 1 false"}},{"text":"「愛馬回復」","color":"aqua","bold":true,click_event:{"action":"run_command",command:"playsound entity.horse.gallop record @s ~ ~ ~ 1 1.25"}},{"text":"付近の馬を回復","color":"white",click_event:{"action":"run_command",command:"execute at @e[type=horse,distance=..64] run particle heart ~ ~1 ~ 0.5 0.5 0.5 1 11 normal"}},{"text":"対象：64mまでの鞍馬","color":"white","underlined":true,click_event:{"action":"run_command",command:"execute unless entity @e[type=horse,distance=6..256,nbt={SaddleItem:{id:\"minecraft:saddle\"}}] run title @s actionbar {\"text\":\"周囲に鞍付きの馬がいない！\",\"color\":\"red\",\"bold\":true,\"italic\":false}"}}]},is_waxed:0b,allow_op_features:1b} replace

# 中身
# effect give @e[type=horse,distance=..64,nbt={equipment:{saddle:{id:"minecraft:saddle"}}}] minecraft:regeneration 8 1 false
# playsound entity.horse.gallop record @s ~ ~ ~ 1 1.25
# execute at @e[type=horse,distance=..64] run particle heart ~ ~1 ~ 0.5 0.5 0.5 1 11 normal
# execute unless entity @e[type=horse,distance=..64,nbt={equipment:{saddle:{id:"minecraft:saddle"}}}] run title @s actionbar {"text":"周囲に鞍付きの馬がいない！","color":"red","bold":true,"italic":false}