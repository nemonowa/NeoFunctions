# 命名：デコイ
# 説明：16m以内の敵を引き寄せる。（SP10消費。）
# 説明：引き寄せた敵は1秒間「exposed」状態になり、その間に白刃一閃(202)や天地断裂(209)を当てると追撃ボーナスが入る（誘い→斬るコンボ）。
# >
# =/function neofunction:asset/skill/208


# 内容：（実行者の16m以内の敵）
execute as @s at @s run tag @e[tag=enemy,distance=..16] add skilldecoy
effect give @s glowing 1 0


# 発動：対象がいない場合、発動しない。
# say スキル発動に成功した！
execute unless entity @e[tag=skilldecoy] run return run title @s actionbar {"text":"告：発動失敗。対象がいない！","color":"red","bold":true}


# 演出
particle portal ~ ~1 ~ 0.1 0.5 0.1 0.001 30 force
playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 2 2 0
execute as @e[tag=skilldecoy] at @s run particle portal ~ ~1 ~ 0.1 0.5 0.1 0.001 30 force
execute as @e[tag=skilldecoy] at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 2 2 0


# ダメージ：
tp @e[tag=skilldecoy] @s
execute as @e[tag=skilldecoy] run damage @s 0.1 minecraft:out_of_world by @p


# 連携準備：引き寄せた敵に1秒間exposedを付与（追撃を受けやすくなる隙）
tag @e[tag=skilldecoy] add exposed
schedule function neofunction:asset/skill/208-1 60t replace


# 跡を濁すな
tag @e remove skilldecoy


# 消費SP
scoreboard players remove @s SP 10

