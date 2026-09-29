# 命名：safe
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_killed_entity/boss
# =/function neofunction:system/adv/player_killed_entity/safe


# 内容
#scoreboard players remove @s karman 1
#function neofunction:system/scoreboard/karman

# 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_killed_entity/safe

