# 命名：418_take
# 説明：「持ち帰る」を選んでいたら、バルドが欠片を預かる一言
# 実行条件：実行者 プレイヤー（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d1/418（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/418_take

# 内容
execute if data storage neofunction:rubra choice{field:"take"} run tellraw @s [{"text":"<"},{"text":"バルド","color":"#C9784A","bold":true},{"text":"> 「……持ってきた欠片は、預かっとく。大事に使うよ。約束だ」"}]
