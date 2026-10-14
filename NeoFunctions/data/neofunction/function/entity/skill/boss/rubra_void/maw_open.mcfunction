# 命名：maw_open
# 説明：【追加：2026-10-13 ルブラ編】8 つの心臓を砕いた：顎がこじ開けられ、中の星が見える。攻撃が通る（耐性 III に戻す）。体力 60 まで削ると発狂
# 説明：【変更：2026-10-14】心臓を全部砕くたびに（4・6・8）、15 秒だけ開く（ot を数える、form3）。大きな文字の表示はやめた
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/heart_phase
# =/function neofunction:entity/skill/boss/rubra_void/maw_open

# 内容
data modify storage neofunction:rubra fin merge value {open:1,vul:1b,ot:0}
effect clear @s minecraft:resistance
effect give @s minecraft:resistance infinite 2 true
kill @e[type=marker,tag=rubra_heart_rot]
execute as @e[type=block_display,tag=rubra_maw_up] at @s run tp @s ~ ~6 ~
execute as @e[type=block_display,tag=rubra_maw_down] at @s run tp @s ~ ~-6 ~
particle minecraft:flash{color:[1.0,0.6,0.4,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..160]
particle minecraft:end_rod ~ ~ ~ 3 3 3 0.2 200 force @a[distance=..160]
playsound minecraft:block.iron_door.open hostile @a[distance=..160] ~ ~ ~ 4 0.4
tellraw @a[distance=..160] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「開いた！ 今です、旅人さん！ 星還しの矢を、顎の奥へ！」"}]
