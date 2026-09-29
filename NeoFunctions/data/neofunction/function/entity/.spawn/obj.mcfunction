# 命名：obj
# 説明：エンティティ処理
# 説明：HPを持っていない
# >/function neofunction:entity/.spawn/.neo
# =/function neofunction:entity/.spawn/obj


# 内容
tag @s add obj

# アイテムエンティティ
execute as @s[type=item] run function neofunction:entity/.spawn/obj/item/.neo

# AEC
execute as @s[type=area_effect_cloud] run function neofunction:entity/.spawn/obj/area_effect_cloud/.neo

# 矢
execute if entity @s[type=#minecraft:arrows] run function neofunction:entity/.spawn/obj/arrow/.neo

# 雪玉
execute as @s[type=snowball] run function neofunction:entity/.spawn/obj/snowball/.neo

# スポナー：無敵化
execute as @s[type=spawner_minecart] run data merge entity @s {Invulnerable:1b}

# 落下砂：騎乗時は持続時間を30sから9mくらいに延長(600になると消える)
# execute as @s[type=falling_block] if predicate neofunction:upper run data merge entity @s {Time:-9999}

# ブレイズの火の玉：
# execute as @s[type=small_fireball] run data merge entity @s {life:-9999}

# Display
execute as @s[type=item_display] if predicate neofunction:upper run data merge entity @s {Tags:["upper"]}
execute as @s[type=block_display] if predicate neofunction:upper run data merge entity @s {Tags:["upper"]}
execute as @s[type=text_display] if predicate neofunction:upper run data merge entity @s {Tags:["upper"]}

# 釣り竿の浮き
execute if entity @s[type=fishing_bobber] run function neofunction:entity/.spawn/obj/fishing_bobber/.neo

# エンダーパール
execute if entity @s[type=ender_pearl] at @s run function neofunction:entity/.spawn/obj/ender_pearl/.neo

# Shulkerが弾を出したらダメージを受ける
execute as @s[type=shulker_bullet] on origin run damage @s 1 minecraft:magic

# TNT：即爆発にしたい
#execute as @s[type=tnt] run data merge entity @s {fuse:0,Motion:[0.0,0.0,0.0]}
