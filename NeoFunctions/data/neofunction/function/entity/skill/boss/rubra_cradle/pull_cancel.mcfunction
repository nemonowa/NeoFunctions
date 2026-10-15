# 命名：pull_cancel
# 説明：引き剥がしの中断（離れた・攻撃を受けた・守り石を手から離した・欠片が砕けた）
# >/function neofunction:entity/skill/boss/rubra_cradle/pull_tick
# >/function neofunction:entity/skill/boss/rubra_cradle/break
# =/function neofunction:entity/skill/boss/rubra_cradle/pull_cancel

# 内容
execute as @a[tag=rubra_puller] run title @s actionbar {"text":"守り石の光が途切れた……（もう一度、欠片を右クリック）","color":"gray"}
tag @a remove rubra_puller
data modify storage neofunction:rubra cradle.pull set value {i:0,t:0}
