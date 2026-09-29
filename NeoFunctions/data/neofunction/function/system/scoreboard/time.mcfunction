# 命名：time
# 説明：tick時間スコアを 時間(second) 分(minute) 秒(survival) に変換する
# >/function neofunction:asset/event/sunrise
# >/function neofunction:asset/event/sundown
# =/function neofunction:system/scoreboard/time


#変換したいスコアを呼び出しファンクションに記入
#scoreboard players operation survival temp = @s survival

## 内容
scoreboard players operation survival temp /= $20 const

scoreboard players operation minute temp = survival temp
scoreboard players operation survival temp %= $60 const
scoreboard players operation minute temp /= $60 const

scoreboard players operation second temp = minute temp
scoreboard players operation minute temp %= $60 const
scoreboard players operation second temp /= $60 const