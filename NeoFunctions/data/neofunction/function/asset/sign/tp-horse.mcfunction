# 命名：tp-horse
# 説明：馬招集スペルサイン
# >
# =/function neofunction:asset/sign/tp-horse


# 付近256m以内の鞍のついた馬を呼び寄せる
# setblock ~ ~ ~ birch_sign[rotation=12,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"italic":false,"underlined":true,click_event:{"action":"run_command",command:"teleport @e[type=horse,distance=6..256,limit=1,nbt={SaddleItem:{id:\"minecraft:saddle\"}}] @p"}},{"text":"「愛馬招集」","color":"aqua","bold":true,click_event:{"action":"run_command",command:"playsound entity.horse.gallop record @s ~ ~ ~ 1 1.25"}},{"text":"付近の馬を呼び寄せる","color":"white",click_event:{"action":"run_command",command:"particle campfire_cosy_smoke ~ ~1.2 ~ 0.1 0.5 0.1 0.1 9 force"}},{"text":"対象：256mまでの鞍馬","color":"white","underlined":true,click_event:{"action":"run_command",command:"execute unless entity @e[type=horse,distance=6..256,nbt={SaddleItem:{id:\"minecraft:saddle\"}}] run title @s actionbar {\"text\":\"周囲に鞍付きの馬がいない！\",\"color\":\"red\",\"bold\":true,\"italic\":false}"}}]},is_waxed:0b,allow_op_features:1b} replace

# 中身
# teleport @e[type=horse,distance=6..256,limit=1,nbt={equipment:{saddle:{id:"minecraft:saddle"}}}] @p
# playsound entity.horse.gallop record @s ~ ~ ~ 1 1.25
# particle campfire_cosy_smoke ~ ~1.2 ~ 0.1 0.5 0.1 0.1 9 force
# execute unless entity @e[type=horse,distance=6..256,nbt={equipment:{saddle:{id:"minecraft:saddle"}}}] run title @s actionbar {"text":"周囲に鞍付きの馬がいない！","color":"red","bold":true,"italic":false}