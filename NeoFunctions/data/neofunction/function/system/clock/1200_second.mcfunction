# 命名：1200_second
# 説明：低周期クロック
# 実行条件：1200秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/1200_second



# 内容
advancement revoke @a from neofunction:.clock/1200s
kill @e[tag=del1200s]

schedule clear neofunction:system/clock/1200_second
schedule function neofunction:system/clock/1200_second 1200s
