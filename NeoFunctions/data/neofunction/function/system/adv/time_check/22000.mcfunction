# 命名：22000
# 説明：time_check
# 説明：impulse
# >time_check
# =/function neofunction:system/adv/time_check/22000


# サイドバー更新
scoreboard players display name time world "LocalTime §b§l04§r Day "

# 夜明け処理
function neofunction:asset/event/sunrise


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:time_check/22000