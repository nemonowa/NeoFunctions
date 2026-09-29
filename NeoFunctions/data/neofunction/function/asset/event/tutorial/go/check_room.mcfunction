# 命名：check_room
# 説明：
# >/function neofunction:asset/event/tutorial/go/loop
# =/function neofunction:asset/event/tutorial/go/check_room

$data modify storage neofunction:tutorial check set from storage neofunction:tutorial room[$(X)][$(Y)][$(Z)]
