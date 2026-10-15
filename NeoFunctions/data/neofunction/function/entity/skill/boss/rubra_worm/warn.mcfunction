# 命名：warn
# 説明：予告のあいだ（毎 tick）：真上の床に赤い光と砂ぼこり。数え終わったら飛び出す
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/warn

# 内容
execute at @s positioned ~ -40.4 ~ run particle minecraft:dust{color:[1.0,0.15,0.1],scale:1.6} ~ ~ ~ 1.4 0 1.4 0 8 force @a[distance=..64]
execute at @s positioned ~ -40 ~ run particle minecraft:block{block_state:"minecraft:red_terracotta"} ~ ~ ~ 1.2 0.1 1.2 0 4 normal
execute store result score #rubra_t temp run data get storage neofunction:rubra worm.t
scoreboard players remove #rubra_t temp 1
execute store result storage neofunction:rubra worm.t int 1 run scoreboard players get #rubra_t temp
execute if score #rubra_t temp matches ..0 at @s run function neofunction:entity/skill/boss/rubra_worm/emerge
