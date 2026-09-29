# 命名：15_second
# 説明：低周期クロック
# 実行条件：15秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/15_second


# skillclock
function neofunction:entity/skill/clock/15s

schedule clear neofunction:system/clock/15_second
schedule function neofunction:system/clock/15_second 15s