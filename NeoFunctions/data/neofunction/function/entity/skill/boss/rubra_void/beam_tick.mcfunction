# 命名：beam_tick
# 説明：床を薙ぐ光線（毎 tick）：予告のあいだは最初の向きに赤い線、薙ぐあいだは向きを 3 度ずつ回して当てる
# 説明：変数入りの関数には、必要な値だけの小さな記録（storage neofunction:rubra fin_m）を渡す（fin を丸ごと渡すと、毎 tick とても重くなった）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/act
# =/function neofunction:entity/skill/boss/rubra_void/beam_tick

# 内容
execute store result score #rv_ba temp run data get storage neofunction:rubra fin.b0
scoreboard players set #rv_bw temp 1
execute if score #rv_c temp matches ..60 run scoreboard players set #rv_bw temp 0
scoreboard players set #rv_bt2 temp 60
scoreboard players operation #rv_bt2 temp -= #rv_c temp
execute if score #rv_bw temp matches 0 run scoreboard players operation #rv_bt2 temp *= $3 const
execute if score #rv_bw temp matches 0 run scoreboard players operation #rv_ba temp += #rv_bt2 temp
execute store result storage neofunction:rubra fin_m.bang int 1 run scoreboard players get #rv_ba temp
function neofunction:entity/skill/boss/rubra_void/beam_draw with storage neofunction:rubra fin_m
execute if score #rv_bw temp matches 0 if score #rv_c temp matches 60 run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..160] ~ ~ ~ 3 0.6
execute if score #rv_c temp matches 0 run tag @a remove rubra_beamhit
