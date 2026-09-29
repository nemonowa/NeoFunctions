# 命名：mark_clear
# 説明：呪印(marked)タグを持つ敵から自動的に解除する（ambush_clear_targetと同じ方式）
# >mark_apply.mcfunction（schedule ... replace で毎回タイマーが延長される）
# =/function neofunction:player/job/assasin/mark_clear

tag @e[tag=marked] remove marked
