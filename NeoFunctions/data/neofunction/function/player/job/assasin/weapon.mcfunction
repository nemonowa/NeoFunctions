# 命名：weapon
# 説明：
# >/function neofunction:player/job/knight/.neo
# =/function neofunction:player/job/assasin/weapon


# SP表示
function neofunction:player/sp/.neo

# 媒体所持時のパッシブ
effect give @s minecraft:speed 1 0 false

# 媒体所持かつスニーク：パリィ状態（1s無敵かつ採掘不能で1秒以内にダメージを受けると）
# execute if entity @s[scores={sneak_time=1..}] run title @s actionbar {"text":"[管理者通知]媒体所持かつスニーク","color":"red"}
# execute if entity @s[scores={sneak_time=1..}] run effect give @s levitation 1 255 true


