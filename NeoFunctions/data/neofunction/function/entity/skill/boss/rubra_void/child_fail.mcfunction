# 命名：child_fail
# 説明：星の子の光が尽きた：滴りを消して、守る戦いを最初からやり直す
# 実行条件：実行者・実行位置 星の子
# >/function neofunction:entity/skill/boss/rubra_void/child_tick
# =/function neofunction:entity/skill/boss/rubra_void/child_fail

# 内容
execute as @e[type=zombie,tag=rubra_fin_drip] run tag @s add del
data modify storage neofunction:rubra fin.child set value {g:100,t:0,w:0}
particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 40 normal
tellraw @a[distance=..40] {"text":"星の子の光が、ふっと揺らいだ……。","color":"#FF8C8C","italic":true}
tellraw @a[distance=..40] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「まだ！ まだ消えてない！ もう一度、守って！」"}]
