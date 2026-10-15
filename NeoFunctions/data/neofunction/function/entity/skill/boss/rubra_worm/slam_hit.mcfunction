# 命名：slam_hit
# 説明：のしかかりが落ちた：まわり 4 マスの人に 12。そのまま潜る（潜りきると地響き）
# 実行条件：実行者・実行位置 本体（床）
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/slam_hit

# 内容
execute as @a[distance=..4,gamemode=!spectator] run damage @s 12 minecraft:mob_attack by @e[type=ravager,tag=rubra_worm,limit=1]
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:block{block_state:"minecraft:red_terracotta"} ~ ~ ~ 3 0.5 3 0 120 normal
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 2.5 0.5
function neofunction:entity/skill/boss/rubra_worm/dive
