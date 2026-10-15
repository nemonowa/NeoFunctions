# 命名：star_start
# 説明：星の雨：広間の人から 3 人まで選び、足もとに赤い印を置く。1.5 秒後にそこへ星が落ちる（star_tick）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/attack
# =/function neofunction:entity/skill/boss/rubra_cradle/star_start

# 内容
playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..40] ~ ~ ~ 2 0.6
execute as @a[distance=..26,gamemode=!spectator,sort=random,limit=3] at @s positioned ~ -44 ~ run summon marker ~ ~ ~ {Tags:["rubra_star","rubra_cradle_part","rubra_d3"],data:{t:0}}
