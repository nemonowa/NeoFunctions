# 命名：dirtshield
# 説明：dirtshieldもちで耐性2レベルを持っている敵を殴るとそのシールドを解除できる。
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/player_hurt_entity/lev



## 内容
effect clear @e[nbt={Tags:["dirtshield"],active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:-1,show_particles:1b}]},sort=nearest,limit=1,distance=..16] minecraft:resistance
effect clear @e[nbt={Tags:["dirtshield"],active_effects:[{id:"minecraft:glowing",amplifier:0b,duration:-1,show_particles:0b}]},sort=nearest,limit=1,distance=..16] minecraft:glowing
#効果音とか
playsound minecraft:block.glass.break record @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01
playsound block.beacon.deactivate record @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01

