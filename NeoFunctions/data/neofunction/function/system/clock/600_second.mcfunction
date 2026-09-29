# 命名：600_second
# 説明：低周期クロック
# 実行条件：600s周期 10m周期に実行されるファンクション
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/600_second



# 内容
advancement revoke @a from neofunction:.clock/600s


kill @e[tag=del600s]

schedule clear neofunction:system/clock/600_second
schedule function neofunction:system/clock/600_second 600s