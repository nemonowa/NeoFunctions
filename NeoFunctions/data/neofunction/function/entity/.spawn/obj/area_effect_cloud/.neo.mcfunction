# 命名：.neo
# 説明：AEC処理
# 説明：初期スポーン時。[tag=check]がないentityが存在するとき。
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/obj/area_effect_cloud/.neo


# AEC
# 騎乗一括削除処理：騎乗時はAECを持続させる
execute if predicate neofunction:upper run data merge entity @s {Duration:2147483647,Tags:["upper"]}

# クリーパー産のAECは消す
execute if entity @s[nbt={RadiusPerTick:-0.008333334f}] run kill @s

# ソウル・カクテル
execute if entity @s[nbt={potion_contents:{custom_color:14423100}}] at @s run function neofunction:asset/skill/51
execute if entity @s[nbt={potion_contents:{custom_color:16753920}}] at @s run function neofunction:asset/skill/51
execute if entity @s[nbt={potion_contents:{custom_color:16776960}}] at @s run function neofunction:asset/skill/51
execute if entity @s[nbt={potion_contents:{custom_color:32768}}] at @s run function neofunction:asset/skill/51
execute if entity @s[nbt={potion_contents:{custom_color:255}}] at @s run function neofunction:asset/skill/51
execute if entity @s[nbt={potion_contents:{custom_color:3033969}}] at @s run function neofunction:asset/skill/51
execute if entity @s[nbt={potion_contents:{custom_color:9371903}}] at @s run function neofunction:asset/skill/51


# モロトフカクテル
execute if entity @s[nbt={potion_contents:{custom_color:16531263}}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:0b,Fuse:-1,ignited:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{id:"minecraft:fire"},Time:1,Motion:[0.0,0.0,0.0]},{id:"minecraft:falling_block",BlockState:{id:"minecraft:fire"},Time:1,Motion:[0.1,0.0,0.0]},{id:"minecraft:falling_block",BlockState:{id:"minecraft:fire"},Time:1,Motion:[0.0,0.0,0.1]},{id:"minecraft:falling_block",BlockState:{id:"minecraft:fire"},Time:1,Motion:[0.1,0.0,0.1]},{id:"minecraft:falling_block",BlockState:{id:"minecraft:fire"},Time:1,Motion:[-0.1,0.0,0.0]},{id:"minecraft:falling_block",BlockState:{id:"minecraft:fire"},Time:1,Motion:[0.0,0.0,-0.1]},{id:"minecraft:falling_block",BlockState:{id:"minecraft:fire"},Time:1,Motion:[-0.1,0.0,-0.1]}]}
execute if entity @s[nbt={potion_contents:{custom_color:16531263}}] at @s run kill @s

# doctorスキル媒体
execute if entity @s[nbt={potion_contents:{custom_color:16573187}}] at @s run function neofunction:player/job/doctor/potion/.neo


# アイテム
#/loot give @s loot neofunction:item/122