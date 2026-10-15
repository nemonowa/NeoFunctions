# 命名：ult_tick
# 説明：発狂（毎 tick、u を数える）
# 説明：約 1 分に延ばし、型を増やして全体をゆっくりに：0〜79 ゆっくり昇る／100 巨大な黒星／260 X 字／320 十字／380 八方向／450 右回りの渦／530 左回りの渦／610 閉じていく輪／700 二重の渦／790〜870 足もとを追う黒星（5 回）／900 二つめの巨大な黒星／940〜1139 無差別爆撃／1180 から自壊（collapse）
# 説明：アクションバーの文字はやめ、型の変わり目は本体の光と音（ult_cue）で伝える
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_tick

# 内容
execute store result score #rv_u temp run data get storage neofunction:rubra fin.u
scoreboard players add #rv_u temp 1
execute store result storage neofunction:rubra fin.u int 1 run scoreboard players get #rv_u temp
# ゆっくり昇る（80 tick で 30 マス）
execute if score #rv_u temp matches ..79 run tp @s ~ ~0.375 ~
execute if score #rv_u temp matches ..79 as @e[type=block_display,tag=rubra_void_part] at @s run tp @s ~ ~0.375 ~
execute if score #rv_u temp matches ..79 run particle minecraft:reverse_portal ~ ~ ~ 6 6 6 0.5 60 force @a[distance=..200]
# 型
execute if score #rv_u temp matches 100 run function neofunction:entity/skill/boss/rubra_void/ult_big
execute if score #rv_u temp matches 260 run function neofunction:entity/skill/boss/rubra_void/ult_x
execute if score #rv_u temp matches 320 run function neofunction:entity/skill/boss/rubra_void/ult_plus
execute if score #rv_u temp matches 380 run function neofunction:entity/skill/boss/rubra_void/ult_eight
execute if score #rv_u temp matches 450 run function neofunction:entity/skill/boss/rubra_void/ult_spiral_r
execute if score #rv_u temp matches 530 run function neofunction:entity/skill/boss/rubra_void/ult_spiral_l
execute if score #rv_u temp matches 610 run function neofunction:entity/skill/boss/rubra_void/ult_close
execute if score #rv_u temp matches 700 run function neofunction:entity/skill/boss/rubra_void/ult_spiral_r
execute if score #rv_u temp matches 700 run function neofunction:entity/skill/boss/rubra_void/ult_spiral_l
execute if score #rv_u temp matches 790 run function neofunction:entity/skill/boss/rubra_void/ult_chase
execute if score #rv_u temp matches 810 run function neofunction:entity/skill/boss/rubra_void/ult_chase
execute if score #rv_u temp matches 830 run function neofunction:entity/skill/boss/rubra_void/ult_chase
execute if score #rv_u temp matches 850 run function neofunction:entity/skill/boss/rubra_void/ult_chase
execute if score #rv_u temp matches 870 run function neofunction:entity/skill/boss/rubra_void/ult_chase
execute if score #rv_u temp matches 900 run function neofunction:entity/skill/boss/rubra_void/ult_big
scoreboard players operation #rv_m temp = #rv_u temp
scoreboard players operation #rv_m temp %= $5 const
execute if score #rv_u temp matches 940..1139 if score #rv_m temp matches 0 run function neofunction:entity/skill/boss/rubra_void/ult_rain
# 自機狙い：狙い撃ちの黒星（1 秒ごと）、黒い槍（1.5 秒ごと）、檻（3 回）
scoreboard players operation #rv_m temp = #rv_u temp
scoreboard players operation #rv_m temp %= $20 const
execute if score #rv_u temp matches 160..1170 if score #rv_m temp matches 5 run function neofunction:entity/skill/boss/rubra_void/ult_snipe
scoreboard players operation #rv_m temp = #rv_u temp
scoreboard players operation #rv_m temp %= $60 const
execute if score #rv_u temp matches 300..1170 if score #rv_m temp matches 15 run function neofunction:entity/skill/boss/rubra_void/ult_shot
execute if score #rv_u temp matches 300..1170 if score #rv_m temp matches 45 run function neofunction:entity/skill/boss/rubra_void/ult_shot
execute if score #rv_u temp matches 600 run function neofunction:entity/skill/boss/rubra_void/ult_cage
execute if score #rv_u temp matches 760 run function neofunction:entity/skill/boss/rubra_void/ult_cage
execute if score #rv_u temp matches 1080 run function neofunction:entity/skill/boss/rubra_void/ult_cage
# エリートは狙い撃ちが 0.5 秒ごと、黒い槍が 1 秒ごと、檻が 5 回
scoreboard players operation #rv_m temp = #rv_u temp
scoreboard players operation #rv_m temp %= $20 const
execute if data storage neofunction:rubra fin{elite:1b} if score #rv_u temp matches 160..1170 if score #rv_m temp matches 15 run function neofunction:entity/skill/boss/rubra_void/ult_snipe
execute if data storage neofunction:rubra fin{elite:1b} if score #rv_u temp matches 300..1170 if score #rv_m temp matches 10 run function neofunction:entity/skill/boss/rubra_void/ult_shot
execute if data storage neofunction:rubra fin{elite:1b} if score #rv_u temp matches 470 run function neofunction:entity/skill/boss/rubra_void/ult_cage
execute if data storage neofunction:rubra fin{elite:1b} if score #rv_u temp matches 930 run function neofunction:entity/skill/boss/rubra_void/ult_cage
# 型の変わり目の合図（文字は出さず、本体の光と音で）
execute if score #rv_u temp matches 100 run function neofunction:entity/skill/boss/rubra_void/ult_cue
execute if score #rv_u temp matches 260 run function neofunction:entity/skill/boss/rubra_void/ult_cue
execute if score #rv_u temp matches 450 run function neofunction:entity/skill/boss/rubra_void/ult_cue
execute if score #rv_u temp matches 610 run function neofunction:entity/skill/boss/rubra_void/ult_cue
execute if score #rv_u temp matches 790 run function neofunction:entity/skill/boss/rubra_void/ult_cue
execute if score #rv_u temp matches 900 run function neofunction:entity/skill/boss/rubra_void/ult_cue
execute if score #rv_u temp matches 940 run playsound minecraft:entity.wither.ambient hostile @a[distance=..200] ~ ~ ~ 4 0.4
execute if score #rv_u temp matches 1180.. run function neofunction:entity/skill/boss/rubra_void/collapse
