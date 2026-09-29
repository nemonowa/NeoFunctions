# 命名：release
# 説明：プレイヤー処理
# 実行条件：スニーク解除時
# >/function neofunction:player/1
# =/function neofunction:player/sneak/release



## 内容
#effect give @s minecraft:speed 1 2 false
scoreboard players reset @s sneak_time
advancement revoke @s only neofunction:tick/entity_scores/release
