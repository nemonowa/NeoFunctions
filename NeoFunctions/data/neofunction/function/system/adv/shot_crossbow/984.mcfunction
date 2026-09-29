# 命名：984
# 説明：A SOLT RIFLE
# 説明：gun:1b
# >
# =/function neofunction:system/adv/shot_crossbow/984


# 内容：発射物を変更
data merge entity @e[type=arrow,limit=1,tag=!gun,distance=..8] {item:{id:"minecraft:iron_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}},life:1190,NoGravity:1b,crit:0b,SoundEvent:"block.sand.step"}

# 装弾数調整
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[984.0f]}}}},predicate=neofunction:random_chance/90] run item modify entity @s weapon.mainhand neofunction:gun/arrow
# schedule function neofunction:system/adv/shot_crossbow/984/modify_mainhand 10t append

# リコイル（反動の演出）
tp @s ~ ~ ~ ~ ~-0.5

# クロスボウの射撃音を消す（空気なら出ない）
stopsound @s

# 射撃音
playsound minecraft:block.sand.break record @a[distance=..8] ~ ~ ~ 1 1.5 1

advancement revoke @s only neofunction:shot_crossbow/984

