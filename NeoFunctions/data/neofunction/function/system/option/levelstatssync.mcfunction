# 命名：巡礼の旅トグル
# 説明：progress_mode を加算式で切り替えることで
# 説明：「巡礼の旅」オプションのON/OFFを行う処理
# 説明：1で有効化メッセージ、2で無効化メッセージを表示し
# 説明：2に達したらprogress_modeを0にリセットする
# >
# =/function neofunction:system/option/levelstatssync

#内容
scoreboard players add levelStatsSync temp 1
execute if score levelStatsSync temp matches 0 run tellraw @a [{"selector":"@p","color":"white","bold":true,"underlined":true},{"text":" が"},{"text":"レベルステータス同期","color":"gold"},{"text":"のオプションを"},{"text":"有効化","color":"green"},{"text":"しました！"}]
execute if score levelStatsSync temp matches 1 run tellraw @a [{"selector":"@p","color":"white","bold":true,"underlined":true},{"text":" が"},{"text":"レベルステータス同期","color":"gold"},{"text":"のオプションを"},{"text":"無効化","color":"dark_aqua"},{"text":"しました！"}]
execute if score levelStatsSync temp matches 1 run scoreboard players set levelStatsSync temp -1