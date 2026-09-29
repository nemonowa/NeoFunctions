# 命名：water
# 説明：進捗達成時（水に入る30sごと
# >進捗
# =/function neofunction:system/adv/enter_block/water


# 内容
execute if dimension neodimension:parkour run return run function neofunction:asset/particle/stageclear

execute unless entity @s[nbt={SelectedItem:{}}] run summon interaction ~ ~0.6 ~ {width:0.6f,height:0.6f,Tags:[EX,drink,del10s],CustomName:[{"text":"飲む("},{"keybind":"key.use"},{"text":")"}]}

execute unless dimension neodimension:nexus run return 0

effect give @s minecraft:regeneration 4 8 true
effect give @s minecraft:water_breathing 10 0 true
effect give @s minecraft:bad_omen 10 0 true

