# 命名：tidy_fin_2
# 説明：終章「星還りの夜」 の後片付け（本体）：タグ rubra_fin のうち、村人とプレイヤーと残す目印以外を消す。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/world/ceresta/rubra/tidy_fin
# =/function neofunction:system/world/ceresta/rubra/tidy_fin_2

# 内容
execute in neodimension:ceresta_festa as @e[tag=rubra_fin,type=!villager,type=!player,tag=!rubra_mira_kan,tag=!rubra_fall_src] run function neofunction:system/world/ceresta/rubra/tidy_one
execute in neodimension:ceresta_festa run forceload remove 866 3226 976 3338
