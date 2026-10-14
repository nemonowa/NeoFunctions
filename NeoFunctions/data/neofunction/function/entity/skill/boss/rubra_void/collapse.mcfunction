# 命名：collapse
# 説明：【追加：2026-10-13 ルブラ編】自壊（発狂を耐えきった）：虚の海が力を使い果たし、ボスが崩れていく。【変更：2026-10-13】必殺技を約 1 分に延ばしたので u を 560 ずらした：1180 ひび（赤い光）、1220〜1300 黒い水が剥がれ落ちながら少しずつ降りる、1260 から小さな爆発、1320 で最後の一矢へ（rise）。大きな文字の表示はやめ、語りだけにした
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/collapse

# 内容
execute if score #rv_u temp matches 1180 run playsound minecraft:block.glass.break hostile @a[distance=..200] ~ ~ ~ 4 0.4
execute if score #rv_u temp matches 1180 run tellraw @a[distance=..200] {"text":"黒星の雨がやんだ。空の上で、黒い水の塊に、赤いひびが走る。力を使い果たした虚の海が、自分の重さに耐えきれず、崩れはじめた。","color":"#B19CD9","italic":true}
execute if score #rv_u temp matches 1180..1320 run particle minecraft:dust{color:[1.0,0.2,0.15],scale:2.5} ~ ~ ~ 4 4 4 0 12 force @a[distance=..200]
execute if score #rv_u temp matches 1180..1320 run particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~-3 ~ 5 2 5 0 25 force @a[distance=..200]
execute if score #rv_u temp matches 1220..1299 run tp @s ~ ~-0.25 ~
execute if score #rv_u temp matches 1220..1299 as @e[type=block_display,tag=rubra_void_part] at @s run tp @s ~ ~-0.25 ~
execute if score #rv_u temp matches 1220 run kill @e[type=block_display,tag=rubra_void_black,limit=6,sort=random]
execute if score #rv_u temp matches 1260 run kill @e[type=block_display,tag=rubra_void_black,limit=6,sort=random]
scoreboard players operation #rv_m temp = #rv_u temp
scoreboard players operation #rv_m temp %= $10 const
execute if score #rv_u temp matches 1260..1319 if score #rv_m temp matches 0 run particle minecraft:explosion ~ ~ ~ 4 4 4 0 4 force @a[distance=..200]
execute if score #rv_u temp matches 1260..1319 if score #rv_m temp matches 0 run playsound minecraft:entity.generic.explode hostile @a[distance=..200] ~ ~ ~ 3 0.6
execute if score #rv_u temp matches 1300 run tellraw @a[distance=..200] {"text":"黒い水が、ぼろぼろと剥がれ落ちていく。その奥で、赤い星が、空へ昇ろうともがいている。","color":"gray","italic":true}
execute if score #rv_u temp matches 1320.. run function neofunction:entity/skill/boss/rubra_void/rise
