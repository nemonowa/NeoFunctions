# 命名：.potion_custom_apply
# 説明：マクロ関数。1件分の効果(id/duration_sec/amplifier)を対象に付与する
# =/function neofunction:system/adv/tick/looking_at/familiar/.potion_custom_apply

$effect give @e[tag=lookedGroup] $(id) $(duration_sec) $(amplifier)
