# 命名：スキル実行部テンプレート
# 説明：サンダーボルト（トリガーすると、左右下に5m,下方向に15mの敵一体に100ダメージ、自身が水に触れていた場合範囲内全体に攻撃。SP20消費。）
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >/function neofunction:asset/skill/.neo
# =/function neofunction:asset/skill/.neo



# 内容：サンボル範囲（左右下に5m,下方向に15m）
execute positioned ~-5 ~-5 ~-5 as @e[dx=10,dy=20,dz=10,tag=enemy] at @s run tag @s add skill0
effect give @s glowing 1 0


# 発動：対象がいない場合、発動しない。
execute unless entity @e[tag=skill0] run return run title @s actionbar {"text":"告：発動失敗。対象がいない！","color":"red","bold":true}
# say スキル発動に成功した！


# 演出
execute as @e[tag=skill0] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..64] ~ ~ ~ 2 1.8 0.1
execute as @e[tag=skill0] at @s run particle minecraft:item{item:"minecraft:sunflower"} ~ ~2 ~ 0 0.1 0 2 30 force @s
execute as @e[tag=skill0] at @s run particle crit ~ ~4 ~ 0.1 2 0.1 0.0 90 force


# ダメージ：自身が水につかっているかで条件分岐。全体化。
execute if block ~ ~ ~ minecraft:water run execute as @e[tag=skill0] at @s run damage @s 100 minecraft:arrow by @p
execute unless block ~ ~ ~ minecraft:water run execute as @e[tag=skill0,limit=1] at @s run damage @s 100 minecraft:arrow by @p


# 跡を濁すな
tag @e remove skill0


# 消費SP
scoreboard players remove @s SP 20