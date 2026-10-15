# 命名：440_end
# 説明：目標を出す
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/fin/440
# =/function neofunction:system/adv/tick/quest/40/fin/440_end

# 内容
data remove storage neofunction:rubra busy
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"広場の西の鍛冶場へ。ヴァルカに 3 つの素材（星の血晶・最初の泉の涙・天墜の楔）を見せる","color":"white","bold":true,"italic":false,"underlined":false}]
