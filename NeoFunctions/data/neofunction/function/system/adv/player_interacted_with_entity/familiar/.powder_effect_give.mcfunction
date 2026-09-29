# 命名：.powder_effect_give
# 説明：マクロ関数。familiar_powder.current_effect/ampを使って対象に永続効果を付与する。
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/.powder_effect_give

$effect give @e[tag=interacted] $(current_effect) infinite $(amp)
