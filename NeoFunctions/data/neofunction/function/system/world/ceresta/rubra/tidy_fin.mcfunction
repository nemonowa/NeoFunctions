# 命名：tidy_fin
# 説明：終章「星還りの夜」 の後片付け：使い終わった目印・表示・当たり判定・残骸（タグ rubra_fin）を消す。チャンクを読み込んで 2 秒後に tidy_fin_2
# 説明：NPC（村人）は残す。後の章で使う目印（水守の館のミラの居場所 rubra_mira_kan、滝の堰 rubra_fall_src）も残す
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/fin/449
# >/function neofunction:system/world/ceresta/rubra/tidy_all
# =/function neofunction:system/world/ceresta/rubra/tidy_fin

# 内容
execute in neodimension:ceresta_festa run forceload add 866 3226 976 3338
schedule function neofunction:system/world/ceresta/rubra/tidy_fin_2 40t replace
