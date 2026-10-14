# 命名：release
# 説明：【追加：2026-10-09 ルブラ編】戦いの後片付け：ボス・黒い滴り・技の目印・黒い水を消し、時の流れを戻す
# 説明：【変更：2026-10-14】舞台の人を広場へ戻すのをやめた。結末の会話は空の舞台の上で（end_a・end_b・burst_c）、終わると真ん中に報酬が出る（449 → system/rubra/fin/reward/build）。帰りは帰還ゲートかアンカーで
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/fin/end_a
# >/function neofunction:system/adv/tick/quest/40/fin/end_b
# >/function neofunction:system/adv/tick/quest/40/fin/burst_c
# =/function neofunction:system/adv/tick/quest/40/fin/release

# 内容
data modify storage neofunction:rubra fin.state set value "done"
kill @e[type=ghast,tag=rubra_void]
execute as @e[type=zombie,tag=rubra_fin_drip] run tag @s add del
function neofunction:entity/skill/boss/rubra_void/clean
function neofunction:entity/skill/boss/rubra_void/day
