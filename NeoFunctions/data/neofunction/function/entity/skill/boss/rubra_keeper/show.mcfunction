# 命名：show
# 説明：番人の間にいる人の画面に「開いている水門 n / 4」と、いちばん早く閉じる水門の残り秒数を出す
# 実行条件：実行者・実行位置 本体（valves_tick のあと：#rk_open・#rk_min temp が入っている）
# >/function neofunction:entity/skill/boss/rubra_keeper/valves_tick
# =/function neofunction:entity/skill/boss/rubra_keeper/show

# 内容
execute if score #rk_open temp matches 0 run return run title @a[distance=..40] actionbar {"text":"壁ぎわの四つの水門を、すべて開けろ（開いている水門 0 / 4）","color":"#7FD8FF"}
scoreboard players operation #rk_min temp /= $10 const
scoreboard players operation #rk_min temp /= $2 const
title @a[distance=..40] actionbar [{"text":"開いている水門 ","color":"#7FD8FF"},{"score":{"name":"#rk_open","objective":"temp"},"color":"white","bold":true},{"text":" / 4　","color":"#7FD8FF"},{"text":"（いちばん早く閉じる水門まで ","color":"gray"},{"score":{"name":"#rk_min","objective":"temp"},"color":"white"},{"text":" 秒）","color":"gray"}]
