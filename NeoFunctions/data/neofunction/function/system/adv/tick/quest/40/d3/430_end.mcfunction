# 命名：430_end
# 説明：次は水守の館のオルド
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/430（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/430_end

# 内容
data remove storage neofunction:rubra busy
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"水守の館の奥のオルドに話しかける","color":"white","bold":true,"italic":false,"underlined":false}]
