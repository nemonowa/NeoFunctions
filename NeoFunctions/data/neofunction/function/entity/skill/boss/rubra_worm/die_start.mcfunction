# 命名：die_start
# 説明：体力が尽きかけた：動きを止めて、しっぽから黒い砂になって崩れ始める（dying）
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/die_start

# 内容
data modify storage neofunction:rubra worm.state set value "dying"
data modify storage neofunction:rubra worm.d set value 0
data merge entity @s {Invulnerable:1b}
kill @e[type=interaction,tag=rubra_hit]
playsound minecraft:entity.ravager.death hostile @a[distance=..64] ~ ~ ~ 2 0.4
playsound minecraft:entity.allay.hurt hostile @a[distance=..64] ~ ~ ~ 1 0.5
