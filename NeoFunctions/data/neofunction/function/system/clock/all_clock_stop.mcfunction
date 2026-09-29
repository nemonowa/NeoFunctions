# 命名：all_clock_stop
# 説明：
# >
# =/function neofunction:system/clock/all_clock_stop


say 全クロック解除
schedule clear neofunction:system/clock/1_second
schedule clear neofunction:system/clock/3_second
schedule clear neofunction:system/clock/5_second
schedule clear neofunction:system/clock/10_second
schedule clear neofunction:system/clock/15_second
schedule clear neofunction:system/clock/30_second
schedule clear neofunction:system/clock/60_second
schedule clear neofunction:system/clock/300_second
schedule clear neofunction:system/clock/600_second
schedule clear neofunction:system/clock/1200_second
schedule clear neofunction:system/clock/3600_second

