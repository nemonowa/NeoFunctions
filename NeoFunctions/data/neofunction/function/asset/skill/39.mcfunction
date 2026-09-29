# 命名：39
# 説明：マナ・インパクト
# 説明：攻撃力40 消費SP20
# >
# =/function neofunction:asset/skill/39


# 内容
# 目線先3m地点から半径3mを対象
execute as @s at @s anchored eyes positioned ^ ^ ^3 as @e[distance=..3,tag=enemy,limit=1,nbt=!{Invulnerable:1b}] run tag @s add skill39
execute as @e[tag=skill39] run damage @s 30 minecraft:explosion by @p
execute as @e[tag=skill39] run effect give @s glowing 1

# 演出
playsound minecraft:entity.wither.break_block record @s ~ ~ ~ 2.0 1.0 1.0
playsound minecraft:block.anvil.hit record @s ~ ~ ~ 0.7 0.5 1.0
playsound minecraft:block.respawn_anchor.charge record @s ~ ~ ~ 0.7 1.2 1.0


# SP消費：20SP消費
scoreboard players remove @s SP 20

# クールタイム
# scoreboard players add @s CT 2

# ゲージ 半分/4 くらいの空腹
# effect give @s hunger 1 10 false