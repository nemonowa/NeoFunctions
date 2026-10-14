# 命名：tidy_d2
# 説明：【追加：2026-10-09 ルブラ編】第二章「涸れ泉の聖堂」 の後片付け：使い終わった目印・表示・当たり判定・残骸（タグ rubra_d2）を消す。チャンクを読み込んで 2 秒後に tidy_d2_2
# 説明：NPC（村人）は残す。後の章で使う目印（水守の館のミラの居場所 rubra_mira_kan、滝の堰 rubra_fall_src）も残す
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/d2/429
# >/function neofunction:system/rubra/tidy_all
# =/function neofunction:system/rubra/tidy_d2

# 内容
execute in neodimension:ceresta_festa run forceload add 925 3110 990 3300
schedule function neofunction:system/rubra/tidy_d2_2 40t replace
