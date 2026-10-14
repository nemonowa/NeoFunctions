# 命名：upgrade_20261014
# 説明：【追加：2026-10-14 ルブラ編】第二章の館まわりの作り直しを、今のワールドに一度だけ反映する（storage neofunction:rubra d2v 3 で済み）。館の裏の通路のブロックは region に直接入れた
# 説明：【変更】2→3：カシムと夜のミラの居場所を湖の西岸の石の船着き場へ（前は館の裏の急な斜面）。焚き火をひとつ。番人の間・壁画の間の分は upgrade_hall（聖堂の中で）
# 説明：【変更】1→2：館の扉を壁と同じ石の隠し扉にした（upgrade_door）
# 実行条件：どこでも（館の近くにプレイヤーがいて、チャンクが読み込まれているとき。guide から）
# >/function neofunction:system/rubra/guide
# =/function neofunction:system/rubra/d2/upgrade_20261014

# 内容
execute unless data storage neofunction:rubra {d2v:2} run function neofunction:system/rubra/d2/upgrade_door
data modify storage neofunction:rubra d2v set value 3
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_kasim] 925.5 44 3265.5 -90 0
execute in neodimension:ceresta_festa run kill @e[type=marker,tag=rubra_mira_lake]
execute in neodimension:ceresta_festa run summon marker 924.5 45 3272.5 {Tags:["rubra_d2","rubra_mira_lake"]}
execute if score #temp main_story matches 421..422 in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 924.5 45 3272.5
execute in neodimension:ceresta_festa if block 926 44 3267 minecraft:air run setblock 926 44 3267 minecraft:campfire[lit=true,signal_fire=false,facing=west]
