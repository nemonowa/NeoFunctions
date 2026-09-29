# 命名：終影審判【エンド・オブ・シャドウ】
# 説明：暗殺士官が忍具を召喚するスキル（SP30消費）
# 実行条件：暗殺士官【shooter】
# >/function neofunction:asset/skill/259
# =/function neofunction:player/job/shooter/skill-special


# 内容
tag @s add shooter-special
tag @e[tag=enemy,distance=..16] add shooter-special-1

playsound minecraft:entity.enderman.teleport record @s ~ ~ ~ 1.0 0.5
playsound minecraft:entity.allay.item_taken record @s ~ ~ ~ 0.5 1.5

# SP消費：100SP消費
scoreboard players remove @s SP 100

# 自己ループ呼び出し
function neofunction:player/job/shooter/skill-special-loop

# クールタイム
# scoreboard players add @s CT 2


