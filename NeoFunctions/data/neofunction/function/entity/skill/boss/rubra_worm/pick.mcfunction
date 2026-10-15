# 命名：pick
# 説明：狙うプレイヤーの足もとの x・z を #rw_ax・#rw_az temp に入れる
# 実行条件：実行者 狙うプレイヤー
# >/function neofunction:entity/skill/boss/rubra_worm/plan
# =/function neofunction:entity/skill/boss/rubra_worm/pick

# 内容
execute store result score #rw_ax temp run data get entity @s Pos[0]
execute store result score #rw_az temp run data get entity @s Pos[2]
