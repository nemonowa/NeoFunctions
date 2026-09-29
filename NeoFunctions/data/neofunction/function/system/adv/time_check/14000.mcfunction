# 命名：14000
# 説明：time_check
# 説明：impulse
# >time_check
# =/function neofunction:system/adv/time_check/14000


# サイドバー更新
scoreboard players display name time world "LocalTime §c§l20§r Day "

# 夜処理
function neofunction:asset/event/sundown




# 再使用のために進捗剥奪
advancement revoke @s only neofunction:time_check/14000