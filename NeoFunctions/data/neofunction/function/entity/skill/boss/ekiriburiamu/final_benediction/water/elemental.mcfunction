# 命名：elemental
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/elemental

function neofunction:asset/summon/664
function neofunction:asset/summon/664
function neofunction:asset/summon/664
function neofunction:asset/summon/664
tag @e[type=vex,nbt={DeathLootTable:"neofunction:asset/summon/664"},limit=4,sort=nearest] add ekirielemental
execute as @e[type=vex,nbt={DeathLootTable:"neofunction:asset/summon/664"},limit=4,sort=nearest] run data modify entity @s Motion set value [0d,0.3d,0d]
execute positioned 1029 7 1765 run playsound entity.evoker.cast_spell hostile @a[distance=..32] ~ ~ ~ 10 0.8
execute positioned 1029 7 1765 run playsound entity.player.splash hostile @a[distance=..32] ~ ~ ~ 1 1