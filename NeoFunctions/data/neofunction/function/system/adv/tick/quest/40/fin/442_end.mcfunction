# 命名：442_end
# 説明：広場の場面のあと：灯籠の光（明かしたときは多く）、ミラとセレンは塔の一階へ
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/fin/442
# =/function neofunction:system/adv/tick/quest/40/fin/442_end

# 内容
data remove storage neofunction:rubra busy
execute if data storage neofunction:rubra choice{reveal:"reveal"} as @e[type=marker,tag=rubra_fin_lantern] at @s run particle minecraft:flame ~ ~1 ~ 0.6 0.4 0.6 0.01 20 normal
execute as @e[type=marker,tag=rubra_fin_tmira,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
execute as @e[type=marker,tag=rubra_fin_tselen,limit=1] at @s run tp @e[type=mannequin,tag=rubra_fin_selenv] ~ ~ ~ 0 0
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"星見の塔の一階へ。ミラに話しかける","color":"white","bold":true,"italic":false,"underlined":false}]
