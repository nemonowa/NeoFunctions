# 命名：巡礼の旅トグル
# 説明：progress_mode を加算式で切り替えることで
# 説明：「巡礼の旅」オプションのON/OFFを行う処理
# 説明：1で有効化メッセージ、2で無効化メッセージを表示し
# 説明：2に達したらprogress_modeを0にリセットする
# >
# =/function neofunction:system/option/progress_mode

#内容
scoreboard players add progress_mode temp 1
execute if score progress_mode temp matches 1 run tellraw @a [{"selector":"@p","color":"white","bold":true,"underlined":true},{"text":" が"},{"text":"巡礼の旅","color":"gold"},{"text":"のオプションを"},{"text":"有効化","color":"green"},{"text":"しました！"}]
execute if score progress_mode temp matches 2 run tellraw @a [{"selector":"@p","color":"white","bold":true,"underlined":true},{"text":" が"},{"text":"巡礼の旅","color":"gold"},{"text":"のオプションを"},{"text":"無効化","color":"dark_aqua"},{"text":"しました！"}]
execute if score progress_mode temp matches 2 run scoreboard players set progress_mode temp 0