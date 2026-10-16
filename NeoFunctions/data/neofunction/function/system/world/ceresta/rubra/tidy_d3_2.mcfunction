# 命名：tidy_d3_2
# 説明：第三章「零の揺籃」 の後片付け（本体）：タグ rubra_d3 のうち、村人とプレイヤーと残す目印以外を消す。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/world/ceresta/rubra/tidy_d3
# =/function neofunction:system/world/ceresta/rubra/tidy_d3_2

# 内容
execute in neodimension:ceresta_festa as @e[tag=rubra_d3,type=!villager,type=!player,tag=!rubra_mira_kan,tag=!rubra_fall_src] run function neofunction:system/world/ceresta/rubra/tidy_one
execute in neodimension:ceresta_festa run forceload remove 880 3240 990 3330
