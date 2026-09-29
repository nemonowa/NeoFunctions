# 命名：天地断裂【グランドクロス】
# 説明：大地と天空を断ち裂く一撃を放ち、周囲の敵に壊滅的なダメージを与える。白刃騎士が振るう決戦の奥義。（SP100消費）
# 説明：発動から0.5秒のタメを経て着弾する。剛刃草薙(204)で打ち上げた敵・陽動偏向(208)で晒した敵には追撃ボーナスが入る。
# >
# =/function neofunction:asset/skill/209


# 内容：サンボル範囲（実行者の16m以内の敵）
#execute if score @s LVL matches ..50 run return run title @s actionbar {"text":"告：LV40解放スキル","color":"red","bold":true}


execute as @s at @s run tag @e[tag=enemy,distance=..10] add skillcross
tag @s add skillcrosscaster
effect give @s glowing 1 0


# 発動：対象がいない場合、発動しない。
# say スキル発動に成功した！
execute unless entity @e[tag=skillcross] run return run title @s actionbar {"text":"告：発動失敗。対象がいない！","color":"red","bold":true}


# タメ演出（0.5秒後に着弾する専用の大技演出）：自身がふわっと浮き上がる
title @s actionbar {"text":"§c§l天地断裂・構え","italic":true}
effect give @s levitation 1 5 true
execute as @e[tag=skillcross] at @s run particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.01 40 force
execute as @e[tag=skillcross] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.3 0.5 0 1 force
particle minecraft:end_rod ~ ~ ~ 0.3 0.1 0.3 0.02 30 force
playsound minecraft:block.beacon.power_select record @a[distance=..16] ~ ~ ~ 1 0.6
playsound minecraft:entity.wither.ambient record @a[distance=..16] ~ ~ ~ 1 2

# 着弾処理を0.5秒後に予約
schedule function neofunction:asset/skill/209-1 10t replace


# 消費SP
scoreboard players remove @s SP 100
