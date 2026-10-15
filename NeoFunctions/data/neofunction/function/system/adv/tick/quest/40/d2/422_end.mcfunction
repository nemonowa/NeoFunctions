# 命名：422_end
# 説明：カシムの話のあと：ミラは洗い場の近く（目印 rubra_mira_wash：子どもから 6 マス以上離れた所）へ。次は洗い場の子ども
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d2/422（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d2/422_end

# 内容
data remove storage neofunction:rubra busy
execute as @e[type=marker,tag=rubra_mira_wash,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"翌朝、水守の谷の洗い場へ。手まり歌を歌う子どもたちに話しかける","color":"white","bold":true,"italic":false,"underlined":false}]
