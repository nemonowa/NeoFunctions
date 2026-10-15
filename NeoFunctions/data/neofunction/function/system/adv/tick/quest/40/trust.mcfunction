# 命名：trust
# 説明：信頼（storage neofunction:rubra trust.<k>）を 1 上げる。k＝star・town・mira・ordo・selen
# 説明：画面には数字を出さない（台詞や光の変化でほのめかす）
# 実行条件：引数 k
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a_mira
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a_ordo
# >/function neofunction:system/adv/tick/quest/40/d2/choice_b_go
# =/function neofunction:system/adv/tick/quest/40/trust

# 内容
$execute store result score #rubra_r temp run data get storage neofunction:rubra trust.$(k)
scoreboard players add #rubra_r temp 1
$execute store result storage neofunction:rubra trust.$(k) int 1 run scoreboard players get #rubra_r temp
