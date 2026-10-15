# 命名：spawn
# 説明：涸れの番人を出す：見えない本体（908）と、表示エンティティで組んだ像（青い石の体・水晶の杖・黒い水の部分）。記録を初めに
# 実行条件：実行位置 番人の間の中心（床の上）
# >/function neofunction:entity/skill/boss/rubra_keeper/start
# =/function neofunction:entity/skill/boss/rubra_keeper/spawn

# 内容
kill @e[tag=rubra_keeper_part]
function neofunction:asset/summon/908
# 像（青い石の体）
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_d2"],block_state:{id:"minecraft:prismarine"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.2f,0f,-0.8f],scale:[2.4f,3.6f,1.6f]}}
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_d2"],block_state:{id:"minecraft:prismarine_bricks"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.4f,3.6f,-0.9f],scale:[2.8f,2.2f,1.8f]}}
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_d2"],block_state:{id:"minecraft:dark_prismarine"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.65f,5.8f,-0.65f],scale:[1.3f,1.3f,1.3f]}}
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_d2"],block_state:{id:"minecraft:lightning_rod"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0f,-0.5f],scale:[1f,6.5f,1f]}}
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_d2"],block_state:{id:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.65f,6.4f,-0.35f],scale:[0.7f,0.7f,0.7f]},brightness:{block:15,sky:15}}
# 黒い水の部分（洗うと消える）
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_keeper_black","rubra_d2"],block_state:{id:"minecraft:black_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-0.85f],scale:[2.5f,2.4f,1.7f]}}
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_keeper_black","rubra_d2"],block_state:{id:"minecraft:black_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.45f,3.55f,-0.95f],scale:[1.5f,2.3f,1.9f]}}
summon block_display ~ ~ ~ {Tags:["rubra_keeper_part","rubra_keeper_black","rubra_d2"],block_state:{id:"minecraft:black_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.7f,5.78f,-0.68f],scale:[0.72f,1.35f,1.35f]}}
data modify storage neofunction:rubra keeper set value {state:"fight",wash:0,t:0,phase:1,whipt:0,d:0}
data modify storage neofunction:rubra d2.kopen set value {v1:0,v2:0,v3:0,v4:0}
playsound minecraft:entity.iron_golem.repair hostile @a[distance=..48] ~ ~3 ~ 2 0.4
playsound minecraft:ambient.underwater.enter hostile @a[distance=..48] ~ ~3 ~ 2 0.6
