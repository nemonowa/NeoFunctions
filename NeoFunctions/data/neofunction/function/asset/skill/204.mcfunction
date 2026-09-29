# 命名：剛刃草薙【スマッシャー】
# 説明：5m以内の敵全体を薙ぎ払い上空に打ち上げる。（SP30消費）
# >
# =/function neofunction:asset/skill/204


# 内容：
execute as @s at @s run tag @e[tag=enemy,distance=..5] add skillattackway
effect give @s glowing 1 0


# 発動：対象がいない場合、発動しない。
# say スキル発動に成功した！
execute unless entity @e[tag=skillattackway] run return run title @s actionbar {"text":"告：発動失敗。対象がいない！","color":"red","bold":true}


# 演出
particle minecraft:crit ~ ~4.5 ~ 0.3 3 0.3 0.1 50 force
playsound minecraft:entity.ender_dragon.flap master @a[distance=..32] ~ ~ ~ 2 1.2 0


# ダメージ：
execute as @s[scores={LVL=0..29}] as @e[tag=skillattackway] run damage @s 30 minecraft:generic by @p
execute as @s[scores={LVL=30..49}] as @e[tag=skillattackway] run damage @s 60 minecraft:generic by @p
execute as @s[scores={LVL=50..69}] as @e[tag=skillattackway] run damage @s 120 minecraft:generic by @p
execute as @s[scores={LVL=70..89}] as @e[tag=skillattackway] run damage @s 240 minecraft:generic by @p
execute as @s[scores={LVL=90..}] as @e[tag=skillattackway] run damage @s 480 minecraft:generic by @p
execute as @s[tag=skillattackway,distance=..5] run data modify entity @s active_effects append value {id:"levitation",duration:2,amplifier:99b,show_particles:true}


# 連携準備：打ち上げた敵に3秒間airjuggledを付与（白刃一閃・天地断裂の追撃ボーナス対象になる）
tag @e[tag=skillattackway] add airjuggled
schedule function neofunction:asset/skill/204-1 60t replace


tag @e remove skillattackway


# 消費SP
scoreboard players remove @s SP 30
