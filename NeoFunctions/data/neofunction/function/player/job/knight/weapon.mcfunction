# 命名：weapon
# 説明：
# >/function neofunction:player/job/knight/.neo
# =/function neofunction:player/job/knight/weapon


# SP表示
function neofunction:player/sp/.neo

# 媒体所持時のパッシブ
effect give @s minecraft:speed 1 0 false

# 媒体所持かつスニーク：パリィ状態（1s無敵かつ採掘不能で1秒以内にダメージを受けると）
scoreboard players remove @s[scores={sneak_time=1..}] SP 1
execute if entity @s[scores={sneak_time=1..}] at @s as @e[type=arrow,distance=..3] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute if entity @s[scores={sneak_time=1..}] at @s as @e[type=shulker_bullet,distance=..3,limit=1] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute if entity @s[scores={sneak_time=1..}] at @s as @e[type=fireball,distance=..3,limit=1] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute if entity @s[scores={sneak_time=1..}] at @s as @e[type=small_fireball,distance=..3,limit=1] run data merge entity @s {Motion:[0.0,-0.1,0.0]}


# 媒体所持かつスニーク：パリィ状態（1s無敵かつ採掘不能で1秒以内にダメージを受けると）
# execute if entity @s[scores={sneak_time=1..}] run title @s actionbar {"text":"[管理者通知]媒体所持かつスニーク","color":"red"}
# execute if entity @s[scores={sneak_time=1..}] run effect give @s levitation 1 255 true


