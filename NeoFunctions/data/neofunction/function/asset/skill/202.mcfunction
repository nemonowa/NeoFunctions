# 命名：白刃一閃【スラッシュ】
# 説明：敵単体に大ダメージ。敵の武器を破壊することがある。発動の反動で少しの間攻撃できなくなる。（SP15消費）
# >
# =/function neofunction:asset/skill/202


# 内容：
tag @e[distance=..5,tag=enemy,limit=1,sort=nearest] add skillslash
execute as @e[tag=skillslash] run effect give @s glowing 1 0
effect give @s mining_fatigue 2 127 true


# 発動：対象がいない場合、発動しない。
# say スキル発動に成功した！
execute unless entity @e[tag=skillslash] run return run title @s actionbar {"text":"告：発動失敗。対象がいない！","color":"red","bold":true}


# 演出
playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..16] ~ ~ ~ 0.4 0.8 0
execute as @e[tag=skillslash] at @s run particle item{item:"minecraft:popped_chorus_fruit"} ~ ~1.5 ~ 0 0 0 0.2 30 force @a[distance=..64]


# ダメージ：
execute as @e[tag=skillslash,predicate=neofunction:random_chance/15] at @s run playsound minecraft:entity.item.break master @a[distance=..16] ~ ~ ~ 1 0.6 0
execute as @e[tag=skillslash,predicate=neofunction:random_chance/15] at @s run particle minecraft:item{item:"minecraft:iron_sword"} ~ ~1 ~ 0.3 0.3 0.3 0.3 15 force
item replace entity @e[tag=skillslash,predicate=neofunction:random_chance/15,tag=!elite] weapon.mainhand with minecraft:air
execute as @s[scores={LVL=0..29}] as @e[tag=skillslash] run damage @s 30 minecraft:player_attack by @p
execute as @s[scores={LVL=30..49}] as @e[tag=skillslash] run damage @s 60 minecraft:player_attack by @p
execute as @s[scores={LVL=50..69}] as @e[tag=skillslash] run damage @s 120 minecraft:player_attack by @p
execute as @s[scores={LVL=70..89}] as @e[tag=skillslash] run damage @s 240 minecraft:player_attack by @p
execute as @s[scores={LVL=90..}] as @e[tag=skillslash] run damage @s 480 minecraft:player_attack by @p


# 連携ボーナス：空脚（203）で滞空中に発動、またはデコイ（208）で晒された敵に追加ダメージ
execute if entity @s[tag=skill203] as @e[tag=skillslash] run damage @s 40 minecraft:player_attack by @p
execute if entity @s[tag=skill203] run title @s actionbar {"text":"§d空中連携！","italic":true}
execute as @e[tag=skillslash,tag=exposed] run damage @s 40 minecraft:player_attack by @p
tag @e[tag=skillslash] remove exposed


# 跡を濁すな
tag @e remove skillslash


# 消費SP
scoreboard players remove @s SP 15

