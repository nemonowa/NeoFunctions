# 命名：go_down
# 説明：てっぺんに着いた：下りる先（bx, -46, bz）へ
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/go_down

# 内容
data modify storage neofunction:rubra worm.state set value "down"
function neofunction:entity/skill/boss/rubra_worm/goal_b with storage neofunction:rubra worm.next
execute at @s run playsound minecraft:entity.ravager.ambient hostile @a[distance=..64] ~ ~ ~ 2 0.4
