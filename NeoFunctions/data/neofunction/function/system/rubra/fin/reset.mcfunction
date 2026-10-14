# 命名：reset
# 説明：【追加：2026-10-09 ルブラ編】制作用：終章を完全にやり直せる状態に戻す。塔・広場・水守の館のチャンクを読み込んで、2 秒後に reset_2
# 説明：【変更：2026-10-09】ミラ・オルドを館へ戻す、いなければミラを呼び直す、ボス・舞台・星の子・セレンの姿・赤い星・人のタグもすべて片付ける
# 説明：手で実行：/function neofunction:system/rubra/fin/reset
# >/function （手で実行）
# =/function neofunction:system/rubra/fin/reset

# 内容
execute in neodimension:ceresta_festa run forceload add 900 3255 965 3315
schedule clear neofunction:entity/skill/boss/rubra_void/start_2
schedule function neofunction:system/rubra/fin/reset_2 40t replace
tellraw @s {"text":"終章をやり直す準備をしています……（2 秒）","color":"gray"}
