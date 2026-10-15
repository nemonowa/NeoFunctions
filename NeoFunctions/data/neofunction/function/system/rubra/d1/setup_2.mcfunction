# 命名：setup_2
# 説明：紅脈の坑の仕掛けと NPC を置く：古いもの（タグ rubra_d1）を消してから、バルド・ミラ・星の台・札の窪み・巨人の像の印。記録（storage neofunction:rubra d1）を初めに戻し、扉を閉じる
# 実行条件：schedule（チャンクを読み込んだあと）
# >/function neofunction:system/rubra/d1/setup
# =/function neofunction:system/rubra/d1/setup_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/rubra/d1/setup_in
execute in neodimension:ceresta_festa run forceload remove 776 3240 890 3295
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/rubra/d1/setup（紅脈の坑の仕掛けと NPC を置きました）","color":"gray"}
