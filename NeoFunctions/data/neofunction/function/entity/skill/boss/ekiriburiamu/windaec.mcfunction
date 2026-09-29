# 命名：=/function neofunction:entity/skill/boss/ekiriburiamu/windaec
# 説明：エキリブリアムの加護チェンジ
# 説明：呼び出し >/function neofunction:entity/skill/clock/10s
# 実行条件：60s毎にエキリブリアムに実行
# >
# =/function neofunction:entity/skill/boss/ekiriburiamu/windaec

#内容

#音を出して少しずつ拡大して10秒で消え去るAECを設置
playsound entity.splash_potion.break record @a[distance=..32] ~ ~ ~ 2.0 1.0
playsound entity.splash_potion.break record @a[distance=..32] ~ ~ ~ 2.0 1.0
playsound entity.splash_potion.break record @a[distance=..32] ~ ~ ~ 2.0 1.0
playsound entity.splash_potion.break record @a[distance=..32] ~ ~ ~ 2.0 1.0
function neofunction:asset/summon/766
summon spawner_minecart ~ ~5 ~ {SpawnData:{entity:{id:"arrow",damage:5d,NoGravity:1b,Passengers:[{id:"area_effect_cloud",Radius:0.01f,custom_particle:{type:"minecraft:explosion"}}],Tags:["ekiriArrow"],life:6000s,crit:1b}},SpawnCount:6s,MinSpawnDelay:32767s,MaxSpawnDelay:32767s,MaxNearbyEntities:32767s,SpawnRange:8s,PortalCooldown:10,Delay:0s,RequiredPlayerRange:64s}
