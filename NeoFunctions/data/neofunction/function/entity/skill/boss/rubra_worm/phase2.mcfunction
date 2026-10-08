# 命名：phase2
# 説明：【追加：2026-10-08 ルブラ編】体力が半分（300）を切った：ミラが欠片を空洞の天井へ投げ上げて、ときどき体じゅうを照らす（flash）
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/phase2

# 内容
data modify storage neofunction:rubra worm.phase set value 2
data modify storage neofunction:rubra worm.ft set value 0
tellraw @a[distance=..64] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「あいつ、光を嫌ってる……！　旅人さん、わたしが照らします！」"}]
