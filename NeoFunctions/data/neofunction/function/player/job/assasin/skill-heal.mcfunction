# 命名：影縫いの術
# 説明：影に潜る忍術。発動時、自身に透明化と再生能力を付与し、周囲8mの敵対状態を解除する。攻撃時、被弾時、採掘時に解除される。（SP25消費）
# >/function neofunction:player/job/assasin/
# =/function neofunction:player/job/assasin/skill-heal


# 周囲8mの敵対状態を解除する
function neofunction:player/job/assasin/skill-debuff

# コスト消費
scoreboard players remove @s SP 10
# scoreboard players add @s CT 15

# エフェクト付与：レベル
effect give @s minecraft:invisibility 90 9
execute as @s run return run effect give @s minecraft:regeneration 90 1
execute as @s[scores={LVL=50..}] run effect give @s minecraft:regeneration 90 0



