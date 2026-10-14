# 命名：die_start
# 説明：【追加：2026-10-09 ルブラ編】体力が尽きかけた：攻撃をやめ、黒い水が流れ落ちていく（dying）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/die_start

# 内容
data modify storage neofunction:rubra keeper.state set value "dying"
data modify storage neofunction:rubra keeper.d set value 0
data merge entity @s {Invulnerable:1b}
kill @e[type=marker,tag=rubra_whip_t]
playsound minecraft:entity.iron_golem.death hostile @a[distance=..48] ~ ~3 ~ 2 0.5
# 【追加：2026-10-14】洗われているあいだ（像が青く光っている）に倒しきると、光を消す reblack を通らずに倒れるので、ここで消す
execute as @e[type=block_display,tag=rubra_keeper_part] run data merge entity @s {Glowing:0b}
