# 命名：300_second
# 説明：低周期クロック
# 実行条件：300s周期 5m周期に実行されるファンクション
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/300_second


# 内容
advancement revoke @a from neofunction:.clock/300s

kill @e[tag=del300s]

# ボスバー
execute as @a at @s unless entity @e[tag=boss,distance=..128] run bossbar set boss visible false

# skillclock
function neofunction:entity/skill/clock/300s

# リロード
schedule clear neofunction:system/clock/300_second
schedule function neofunction:system/clock/300_second 300s