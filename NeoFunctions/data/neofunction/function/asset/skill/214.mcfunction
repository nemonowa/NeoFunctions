# 命名：214
# 説明：レゾナンス・シギル
# 説明：運命刻印
# >
# =/function neofunction:asset/skill/214


# 内容

execute as @e[tag=enemy,distance=..8] run effect give @s minecraft:glowing 30 118 true
execute as @s[scores={LVL=0..}] as @e[tag=enemy,distance=..8] run effect give @s minecraft:wither 30 0 true
execute as @s[scores={LVL=30..}] as @e[tag=enemy,distance=..8] run effect give @s minecraft:wither 30 1 true
execute as @s[scores={LVL=50..}] as @e[tag=enemy,distance=..8] run effect give @s minecraft:wither 30 2 true
execute as @s[scores={LVL=70..}] as @e[tag=enemy,distance=..8] run effect give @s minecraft:wither 30 3 true
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=..8] run effect give @s minecraft:wither 30 4 true

# 追加：刺すだけの1手で終わらせないため、自身に短時間の機動力バフを付与（次の一手への布石として単体運用でも腐らないようにする）
effect give @s minecraft:speed 4 0 true

# 演出
playsound block.amethyst_block.resonate record @s ~ ~ ~ 1.0 2.0


# SP消費：5SP消費（10→5に軽量化。気軽に刺せる牽制技として運用しやすくする）
scoreboard players remove @s SP 5

# クールタイム
# scoreboard players add @s CT 2
