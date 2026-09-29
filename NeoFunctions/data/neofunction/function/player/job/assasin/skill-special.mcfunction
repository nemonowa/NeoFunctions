# 命名：終影審判【エンド・オブ・シャドウ】
# 説明：暗殺士官の奥義。発動時、周囲16mの敵に対し0.1秒(2t)ごとに背後へ回り込み、
#        連続で斬撃を叩き込む（SP100消費）
# 実行条件：暗殺士官【ASSASIN】
# >/function neofunction:asset/skill/259
# =/function neofunction:player/job/assasin/skill-special


scoreboard objectives add SpecialHit dummy
scoreboard players set @s SpecialHit 0

# 内容
tag @s add assasin-special
tag @e[tag=enemy,distance=..16] add assasin-special-1

# 演出：影が渦を巻いて集束し、一気に解き放たれる
particle minecraft:sculk_soul ~ ~1 ~ 0.6 1 0.6 0.01 60 normal
particle minecraft:witch ~ ~1 ~ 0.6 1 0.6 0.03 30 normal
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.8 0.4 0.02 15 normal
playsound minecraft:entity.enderman.teleport record @s ~ ~ ~ 1.0 0.5
playsound minecraft:entity.warden.sonic_boom record @s ~ ~ ~ 0.4 1.8
playsound minecraft:entity.allay.item_taken record @s ~ ~ ~ 0.5 1.5

# SP消費：100SP消費
scoreboard players remove @s SP 100

# 自己ループ呼び出し（2t間隔で実行される）
function neofunction:player/job/assasin/skill-special-loop
