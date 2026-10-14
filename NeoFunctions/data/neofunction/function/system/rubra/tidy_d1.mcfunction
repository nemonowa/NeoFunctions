# 命名：tidy_d1
# 説明：【追加：2026-10-09 ルブラ編】第一章「紅脈の坑」 の後片付け：使い終わった目印・表示・当たり判定・残骸（タグ rubra_d1）を消す。チャンクを読み込んで 2 秒後に tidy_d1_2
# 説明：NPC（村人）は残す。後の章で使う目印（水守の館のミラの居場所 rubra_mira_kan、滝の堰 rubra_fall_src）も残す
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/d1/419
# >/function neofunction:system/rubra/tidy_all
# =/function neofunction:system/rubra/tidy_d1

# 内容
execute in neodimension:ceresta_festa run forceload add 776 3240 890 3295
schedule function neofunction:system/rubra/tidy_d1_2 40t replace
