# 命名：tidy_d1_2
# 説明：第一章「紅脈の坑」 の後片付け（本体）：タグ rubra_d1 のうち、村人とプレイヤーと残す目印以外を消す。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/rubra/tidy_d1
# =/function neofunction:system/rubra/tidy_d1_2

# 内容
execute in neodimension:ceresta_festa as @e[tag=rubra_d1,type=!villager,type=!player,tag=!rubra_mira_kan,tag=!rubra_fall_src] run function neofunction:system/rubra/tidy_one
execute in neodimension:ceresta_festa run forceload remove 776 3240 890 3295
