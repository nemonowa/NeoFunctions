# 命名：pull_near
# 説明：【追加：2026-10-09 ルブラ編】引き剥がしている人が欠片 i から 4 マス以内なら #rc_near temp を 1 に。欠片から守り石の人へ青い光の筋
# 実行条件：引数 i（cradle.pull）
# >/function neofunction:entity/skill/boss/rubra_cradle/pull_tick
# =/function neofunction:entity/skill/boss/rubra_cradle/pull_near

# 内容
scoreboard players set #rc_near temp 0
$execute as @e[type=item_display,tag=rubra_frag$(i),limit=1] at @s if entity @a[tag=rubra_puller,distance=..4] run scoreboard players set #rc_near temp 1
$execute as @e[type=item_display,tag=rubra_frag$(i),limit=1] at @s run particle minecraft:dust{color:[0.35,0.6,1.0],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0 4 normal
