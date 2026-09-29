# 命名：再読み込み機構
# 説明：ログイン開始時に正常化する。
# 注意：この処理はプレイヤーのスポーン前に実行される。
# >/reload（ワールドを開いた時）
# =/function neofunction:load


# 内容
tellraw @a[gamemode=creative] {"text":"Reloaded!!","bold":true,"underlined":true,"color":"green",click_event:{"action":"run_command",command:"/trigger kill"},hover_event:{"action":"show_text",value:"詰み防止の自決"}}
tellraw @a[gamemode=!creative] {"text":"Reloaded!!","bold":true,"underlined":true,"color":"aqua",click_event:{"action":"run_command",command:"/trigger kill"},hover_event:{"action":"show_text",value:"詰み防止の自決"}}

# ワールドの正常性確認
schedule function neofunction:asset/event/log-in 1s replace
# function neofunction:asset/event/log-in


# LevelSync もしオプションが有効だった場合
execute if score levelStatsSync temp matches -1 run function neofunction:system/levelstatssync/load
