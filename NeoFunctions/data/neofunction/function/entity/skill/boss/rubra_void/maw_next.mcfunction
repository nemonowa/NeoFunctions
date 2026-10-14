# 命名：maw_next
# 説明：【追加：2026-10-14 ルブラ編】開いた顎を削りきった：次のフェーズへ（hp3 を 1 つ増やす）。顎が閉じ、増えた数の黒い心臓が浮かび上がる（maw_close）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/maw_tick
# =/function neofunction:entity/skill/boss/rubra_void/maw_next

# 内容
execute store result score #rv_hp3 temp run data get storage neofunction:rubra fin.hp3
scoreboard players add #rv_hp3 temp 1
execute store result storage neofunction:rubra fin.hp3 int 1 run scoreboard players get #rv_hp3 temp
function neofunction:entity/skill/boss/rubra_void/maw_close
execute if score #rv_hp3 temp matches 2 run tellraw @a[distance=..160] {"text":"顎が身をよじって閉じた。その奥から、黒い心臓が 6 つ、浮かび上がる――","color":"gray","italic":true}
execute if score #rv_hp3 temp matches 3 run tellraw @a[distance=..160] {"text":"顎がきしみながら閉じる。黒い心臓が 8 つ。虚の海が、最後の力をかき集めている――","color":"gray","italic":true}
