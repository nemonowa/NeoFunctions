# 命名：journals
# 説明：アズールの手記 その一（塔の一階の書見台）・その三（洗い場のそば）・その四（坑道の入口）の置き場を置き直す。チャンクを読み込んで 2 秒後に journals_2
# 実行条件：いつでも（手で実行してもよい）
# >/function neofunction:system/rubra/fin/setup
# >/function neofunction:system/rubra/d3/setup_in
# =/function neofunction:system/rubra/journals

# 内容
execute in neodimension:ceresta_festa run forceload add 870 3255 945 3295
schedule function neofunction:system/rubra/journals_2 40t replace
