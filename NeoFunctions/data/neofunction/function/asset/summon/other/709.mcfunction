# 命名：=/function neofunction:asset/summon/other/709
# 説明：
# 説明：タグ：downer,FrogBoss
# >
# =/function neofunction:asset/summon/other/709

fill 650 -33 2136 654 -33 2140 air

#kill @e[tag=FrogBossShooter]
#kill @e[tag=FrogSpread]
#kill @e[tag=FrogBossSpawner]

#execute positioned 673 -49 2138 run function neofunction:entity/skill/boss/frog_boss/spawner_check

#execute positioned 652 -49 2159 run function neofunction:entity/skill/boss/frog_boss/spawner_check

#execute positioned 631 -49 2138 run function neofunction:entity/skill/boss/frog_boss/spawner_check

#execute positioned 652 -49 2117 run function neofunction:entity/skill/boss/frog_boss/spawner_check

place template neofunction:frog_boss/no_gate 650 -54 2136

execute positioned 652 -52 2138 run function neofunction:asset/summon/709

execute positioned 652 -52 2138 as @a[distance=..40] run function neofunction:player/armor/lock/set