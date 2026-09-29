# 命名：=/function admin:reset
# 説明：ショートカット
# 実行条件：手動
# >
# =/function admin:.neo/reset



# 内容
say 初期化処理を実行。
function neofunction:asset/setting

say "..\saves\<world>\playerdata"を削除
say "..\saves\<world>\advancements"を削除
say "..\saves\<world>\stats"を削除
say "..\saves\<world>\data\scoreboard.dat"を削除
say "..\saves\<world>\level.dat\data\player"を削除