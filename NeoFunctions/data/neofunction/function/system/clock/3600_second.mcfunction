# 命名：3600_second
# 説明：低周期クロック
# 実行条件：3600秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/3600_second



# 内容
advancement revoke @a from neofunction:.clock/3600s
#execute in minecraft:overworld run weather clear 3000s
#雨が降りすぎる対策？だったもの、一旦停止要再検討
kill @e[tag=del3600s]

# 再使用
schedule clear neofunction:system/clock/3600_second
schedule function neofunction:system/clock/3600_second 3600s
