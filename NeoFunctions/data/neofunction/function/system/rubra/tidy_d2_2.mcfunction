# 命名：tidy_d2_2
# 説明：【追加：2026-10-09 ルブラ編】第二章「涸れ泉の聖堂」 の後片付け（本体）：タグ rubra_d2 のうち、村人とプレイヤーと残す目印以外を消す。終わったらチャンクの固定を外す。【変更：2026-10-14】最初の泉の盃（rubra_pick_tear）と手記その二の台（rubra_pick_j2）も残す（章のあとも触れるたびに手に入る）
# 実行条件：schedule
# >/function neofunction:system/rubra/tidy_d2
# =/function neofunction:system/rubra/tidy_d2_2

# 内容
execute in neodimension:ceresta_festa as @e[tag=rubra_d2,type=!villager,type=!player,tag=!rubra_mira_kan,tag=!rubra_fall_src,tag=!rubra_pick_tear,tag=!rubra_pick_j2] run function neofunction:system/rubra/tidy_one
execute in neodimension:ceresta_festa run forceload remove 925 3110 990 3300
