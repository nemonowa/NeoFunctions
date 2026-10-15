# 命名：426_end
# 説明：壁画のあと：手記の台と、黒い水の溜まりの先の案内
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d2/426（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d2/426_end

# 内容
data remove storage neofunction:rubra busy
tellraw @s {"text":"壁画の前の石の台に、古い手記が置かれている。（右クリックで拾う）","color":"#C9A27E","italic":true}
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"奥の通路の黒い水を、上の水門から流す澄んだ水で押し流し、さらに奥へ","color":"white","bold":true,"italic":false,"underlined":false}]
