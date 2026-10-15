# 命名：cancel
# 説明：引き剥がしの中断（離れた・攻撃を受けた・守り石を手から離した）
# 実行条件：どこでも
# >/function neofunction:system/rubra/d3/xtal/pull_tick
# =/function neofunction:system/rubra/d3/xtal/cancel

# 内容
execute as @a[tag=rubra_xpuller] run title @s actionbar {"text":"守り石の光が途切れた……（もう一度、結晶を右クリック）","color":"gray"}
tag @a remove rubra_xpuller
data modify storage neofunction:rubra d3.xt.pull set value {i:0,t:0}
