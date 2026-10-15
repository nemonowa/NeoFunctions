# 命名：hint
# 説明：一つ目の結晶の封に近づいたとき（一度だけ）：ミラが守り石の使い方を口にする
# 実行条件：実行者 プレイヤー（封のそば）
# >/function neofunction:system/adv/tick/quest/40/d3/zone
# =/function neofunction:system/rubra/d3/xtal/hint

# 内容
data modify storage neofunction:rubra d3.xt.m1 set value 1b
tellraw @a[distance=..24] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「出口が、赤い結晶でふさがれてる……師匠の部屋にあった星核と同じ色。旅人さん、オルドさまの守り石を手に持って、結晶に触れてみて。離れずに、じっと――」"}]
