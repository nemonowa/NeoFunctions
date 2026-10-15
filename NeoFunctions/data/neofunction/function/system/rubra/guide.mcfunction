# 命名：guide
# 説明：ルブラ編で、次に話しかける（または近づく）と物語が進む相手を光らせる（発光 2 秒を毎秒付け直す。相手が変われば前の相手の光は自然に消える）
# 説明：迷宮の中を進む所・謎解き・ボス戦（414・415・425〜427・434〜438・444〜448）は光らせない
# 実行条件：どこでも（system/clock/1_second から、毎秒）
# >/function neofunction:system/clock/1_second
# =/function neofunction:system/rubra/guide

# 内容
# 第三章が終わったあとも塔の床石が開いたままなら閉じる（塔の近くにプレイヤーがいるとき）
execute if score #temp main_story matches 439.. if data storage neofunction:rubra d3{hatch:1b} in neodimension:ceresta_festa positioned 921 47 3279 if entity @a[distance=..48] run function neofunction:system/rubra/d3/hatch_close
# 最初の泉の盃と、壁画の間の手記その二の台は、章が終わっても触れるたびに手に入る。片付けで消えていたら置き直す（近くにプレイヤーがいるとき）
execute if score #temp main_story matches 429.. in neodimension:ceresta_festa positioned 960.5 41 3121.5 if entity @a[distance=..32] unless entity @e[type=interaction,tag=rubra_pick_tear,distance=..2] run summon interaction 960.5 41 3121.5 {Tags:["rubra_click","rubra_d2","rubra_pick","rubra_pick_tear"],width:1.0f,height:1.0f,response:1b}
execute if score #temp main_story matches 429.. in neodimension:ceresta_festa positioned 960.5 53 3155.5 if entity @a[distance=..32] unless entity @e[type=interaction,tag=rubra_pick_j2,distance=..2] run summon interaction 960.5 53 3155.5 {Tags:["rubra_click","rubra_d2","rubra_pick","rubra_pick_j2"],width:1.0f,height:1.2f,response:1b}
# 館のオルドの立ち位置を食卓の柵の上から 1 マス東へ（古い位置に立っていれば動かす）
execute in neodimension:ceresta_festa positioned 958.5 44 3271.5 as @e[type=villager,tag=rubra_ordo,distance=..0.6] run tp @s 959.5 44 3271.5 90 0
# 番号の並べ直し（809〜834 → 900〜925）を、前から置いてある NPC に反映する（一体ずつ一度だけ）
execute as @e[type=villager,tag=rubra_npc,tag=!rubra_renum] run function neofunction:system/rubra/renum_npc
# 頭の無いルブラの NPC に頭を付ける（置き直したときや、前から置いてある NPC）
execute as @e[type=villager,tag=rubra_npc] unless items entity @s armor.head minecraft:player_head run function neofunction:system/rubra/heads
# 街の底の 5 軒を店に改装する（一度だけ。広場の近くにプレイヤーがいるとき）
execute unless data storage neofunction:rubra {shopv:1} in neodimension:ceresta_festa positioned 921 45 3283 if entity @a[distance=..28] run function neofunction:system/rubra/shops/build
# 終章のボス戦で止めた時の流れを、戦いが無いのに戻し損ねていたら戻す（止まったままだと、時刻の進捗が毎 tick 発火して日没の表示が流れ続ける）
execute if data storage neofunction:rubra {fin_night:1b} unless entity @e[type=ghast,tag=rubra_void] run function neofunction:entity/skill/boss/rubra_void/day
# 第二章の入口の作り直しを、今のワールドに一度だけ反映する（館の近くにプレイヤーがいるとき）
execute unless data storage neofunction:rubra {d2v:3} in neodimension:ceresta_festa positioned 957 45 3271 if entity @a[distance=..48] run function neofunction:system/rubra/d2/upgrade_20261014
execute unless score #temp main_story matches 410..449 run return 0
# バルド：話を聞く（410）、報告（417）
execute if score #temp main_story matches 410 run effect give @e[type=villager,tag=rubra_baldo] minecraft:glowing 2 0 true
execute if score #temp main_story matches 417 run effect give @e[type=villager,tag=rubra_baldo] minecraft:glowing 2 0 true
# ミラ
execute if score #temp main_story matches 411..413 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
execute if score #temp main_story matches 416 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
execute if score #temp main_story matches 419 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
execute if score #temp main_story matches 423..424 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
execute if score #temp main_story matches 428..429 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
execute if score #temp main_story matches 433 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
execute if score #temp main_story matches 439 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
execute if score #temp main_story matches 442..443 run effect give @e[type=villager,tag=rubra_mira] minecraft:glowing 2 0 true
# オルド（421 は会議の選択がまだのとき）
execute if score #temp main_story matches 420 run effect give @e[type=villager,tag=rubra_ordo] minecraft:glowing 2 0 true
execute if score #temp main_story matches 421 unless data storage neofunction:rubra choice.council run effect give @e[type=villager,tag=rubra_ordo] minecraft:glowing 2 0 true
execute if score #temp main_story matches 430..432 run effect give @e[type=villager,tag=rubra_ordo] minecraft:glowing 2 0 true
execute if score #temp main_story matches 441 run effect give @e[type=villager,tag=rubra_ordo] minecraft:glowing 2 0 true
# カシム（会議の選択のあと）
execute if score #temp main_story matches 421 if data storage neofunction:rubra choice.council run effect give @e[type=villager,tag=rubra_kasim] minecraft:glowing 2 0 true
# 洗い場の子ども（村人だけ）
execute if score #temp main_story matches 422 run effect give @e[type=villager,tag=rubra_child] minecraft:glowing 2 0 true
# ヴァルカ（素材を見せる）
execute if score #temp main_story matches 440 run effect give @e[type=villager,tag=rubra_valka] minecraft:glowing 2 0 true
