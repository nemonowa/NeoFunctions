# 命名：form3
# 説明：第 3 形態「ヴォイド・ゼロ」：心臓のフェーズ（4・6・8）のあいだは心臓を回し、星還しの矢で全部砕くと顎が 15 秒開く（maw_open → maw_tick）。心臓を砕いても体力は削れない。開いているあいだに 200・100・60 まで削ると、心臓 6・心臓 8・発狂へ。縁は黒い海
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/form3

# 内容
# 舞台の崩れ（第 3 形態に入ってすぐ、約 6.5 秒）
execute unless data storage neofunction:rubra fin{sc:0} run function neofunction:entity/skill/boss/rubra_void/stage_break
# 顎が開いているあいだ（15 秒）：体力を削ると次のフェーズへ（フェーズ 1 は 200 以下で心臓 6、フェーズ 2 は 100 以下で心臓 8、フェーズ 3 は 60 以下で発狂）。15 秒で削りきれなければ閉じて、同じ数の心臓がまた浮かぶ
execute if data storage neofunction:rubra fin{open:1} run function neofunction:entity/skill/boss/rubra_void/maw_tick
execute if data storage neofunction:rubra fin{open:1} run return 0
execute if data storage neofunction:rubra fin{state:"ult"} run return 0
# 心臓を回す（フェーズの数に合わせて）
execute if data storage neofunction:rubra fin{hp3:1} as @e[type=marker,tag=rubra_heart_rot,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/orbit4
execute if data storage neofunction:rubra fin{hp3:2} as @e[type=marker,tag=rubra_heart_rot,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/orbit6
execute if data storage neofunction:rubra fin{hp3:3} as @e[type=marker,tag=rubra_heart_rot,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/orbit8
execute as @e[type=ghast,tag=rubra_heart] at @s run particle minecraft:squid_ink ~ ~1 ~ 0.3 0.3 0.3 0.01 2 force @a[distance=..128]
# 星還しの矢が来たか
execute as @e[type=ghast,tag=rubra_heart] at @s positioned ~ ~1 ~ run function neofunction:entity/skill/boss/rubra_void/heart_check
# 心臓が減ったら顎を削る。0 になったら次のフェーズ
execute store result score #rv_hn temp if entity @e[type=ghast,tag=rubra_heart]
execute store result score #rv_hn0 temp run data get storage neofunction:rubra fin.hn
execute if score #rv_hn temp < #rv_hn0 temp run function neofunction:entity/skill/boss/rubra_void/heart_hit
execute store result storage neofunction:rubra fin.hn int 1 run scoreboard players get #rv_hn temp
execute if score #rv_hn temp matches 0 run function neofunction:entity/skill/boss/rubra_void/heart_phase
# 縁から満ちる黒い海（1 秒ごと、真ん中から 22 マスより外）
execute store result score #rv_ht temp run data get storage neofunction:rubra fin.ht
scoreboard players add #rv_ht temp 1
execute if score #rv_ht temp matches 20.. run scoreboard players set #rv_ht temp 0
execute store result storage neofunction:rubra fin.ht int 1 run scoreboard players get #rv_ht temp
# 縁には第 3 形態の始めに黒いカーペット（黒い水）を敷く（rim_on）
# execute if score #rv_ht temp matches 0 as @e[type=marker,tag=rubra_sky_center,limit=1] at @s as @a[distance=22..70,gamemode=!spectator] at @s run function neofunction:entity/skill/boss/rubra_void/edge
execute if score #rv_ht temp matches 0 as @e[type=marker,tag=rubra_sky_center,limit=1] at @s run particle minecraft:squid_ink ~ ~0.3 ~ 26 0 26 0.02 160 force @a[distance=..128]
