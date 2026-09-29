# 命名：ゴリラ・ゴリラ・ゴリラ
# 説明：ゴリ押しを執り行う。
# >/function neofunction:system/adv/tick/looking_at/pos24
# >/function neofunction:system/trigger/code/211
# =/function neofunction:asset/tellraw/nexus


# 内容：達成してるアンカーに転移する
scoreboard players enable @s teleport

tellraw @s {"text":"—————————<< 転移メニュー >>—————————","color":"dark_aqua","bold":true,"italic":false}

tellraw @s {"text":"転移可能な解析済みのアンカーのリスト","color":"dark_aqua","bold":true,"italic":false}

# マクロで行数削減
function neofunction:asset/nbt/for_in_range {Min:0,Max:200,Function:"neofunction:asset/tellraw/nexus_for"}

tellraw @s {"text":"————————————————————————————————————","color":"dark_aqua","bold":true,"italic":false}