# 命名：combo
# 説明：攻撃時にコンボする
# >/function neofunction:system/adv/player_hurt_entity/.all
# =/function neofunction:player/job/doctor/combo


# 媒体を所持していないならコンボしない
execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed",amplifier:0b}]}] run return 1

# ジョブによって多彩な攻撃を可能にしたい
playsound minecraft:entity.zombie.attack_iron_door record @s ~ ~ ~ 0.1 1.3 0

# コンボ（逆順にしないとコンボしないよ
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:109b}]}] glowing 5 109 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:108b}]}] glowing 5 109 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:107b}]}] glowing 5 108 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:106b}]}] glowing 5 107 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:105b}]}] glowing 5 106 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:104b}]}] glowing 5 105 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:103b}]}] glowing 5 104 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:102b}]}] glowing 5 103 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:101b}]}] glowing 5 102 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:100b}]}] glowing 5 101 false
effect give @s glowing 3 100 false

#
title @s subtitle {"text":"                      ↠1combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:100b}]}] subtitle {"text":"                      ↠2combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:101b}]}] subtitle {"text":"                      ↠3combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:102b}]}] subtitle {"text":"                      ↠4combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:103b}]}] subtitle {"text":"                      ↠5combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:104b}]}] subtitle {"text":"                      ↠6combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:105b}]}] subtitle {"text":"                      ↠7combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:106b}]}] subtitle {"text":"                      ↠8combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:107b}]}] subtitle {"text":"                      ↠9combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:108b}]}] subtitle {"text":"                      ↠10combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:109b}]}] subtitle {"text":"                      ↠10combo","color":"red","bold":true,"italic":true}

#
title @s title {"text":" "}

