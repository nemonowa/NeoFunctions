# 命名：ambush_clear_target
# 説明：奇襲体勢(ambush)タグを持つプレイヤーから自動的に解除する。
# 説明：254-3(skill254タグ解除)と同様の全体解除方式。
# >ambush_give.mcfunction（schedule ... replace で毎回タイマーが延長される）
# =/function neofunction:asset/skill/ambush_clear_target

tag @a[tag=ambush] remove ambush
