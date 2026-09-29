# 命名：エンティティ処理
# 説明：エンティティ初期スポーン時。[tag=check]がないentityが存在するとき。全ドロップアイテムに実行されるのでできる限り軽量化して
# >/function neofunction:entity/.spawn/obj
# =/function neofunction:entity/.spawn/obj/item/.neo


# バニラアイテムへの処理
# ネザースター
execute as @s[nbt={Item:{id:"minecraft:nether_star"}}] at @s run function neofunction:entity/.spawn/obj/item/nether_star

# 花火の星：
execute as @s[nbt={Item:{id:"minecraft:firework_star"}}] run function neofunction:entity/.spawn/obj/item/firework_star

# 紙：対応する関数を呼び出すマクロ
execute as @s[nbt={Item:{id:"minecraft:paper"}}] run function neofunction:entity/.spawn/obj/item/paper

# ストラクチャーブロック：釣りルートテーブル代替
execute as @s[nbt={Item:{id:"minecraft:structure_block"}}] run function neofunction:entity/.spawn/obj/item/structure_block


# スイートベリー：
execute as @s[nbt={Item:{id:"minecraft:sweet_berries"}}] unless data entity @s Item.components."minecraft:custom_model_data".floats[0] run function neofunction:entity/.spawn/obj/item/sweet_berries

# 小麦
execute if data entity @s Item{id:"minecraft:wheat"} run function neofunction:entity/.spawn/obj/item/wheat
# 小麦の種
execute if data entity @s Item{id:"minecraft:wheat_seeds"} run function neofunction:entity/.spawn/obj/item/wheat_seeds

# 発動媒体
# 白刃
execute if function neofunction:entity/.spawn/obj/item/origin_job/knight run execute as @s[nbt={Item:{id:"minecraft:wooden_sword"}}] run function neofunction:entity/.spawn/obj/item/sword
execute if function neofunction:entity/.spawn/obj/item/origin_job/knight run execute as @s[nbt={Item:{id:"minecraft:stone_sword"}}] run function neofunction:entity/.spawn/obj/item/sword
execute if function neofunction:entity/.spawn/obj/item/origin_job/knight run execute as @s[nbt={Item:{id:"minecraft:iron_sword"}}] run function neofunction:entity/.spawn/obj/item/sword
execute if function neofunction:entity/.spawn/obj/item/origin_job/knight run execute as @s[nbt={Item:{id:"minecraft:golden_sword"}}] run function neofunction:entity/.spawn/obj/item/sword
execute if function neofunction:entity/.spawn/obj/item/origin_job/knight run execute as @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run function neofunction:entity/.spawn/obj/item/sword
execute if function neofunction:entity/.spawn/obj/item/origin_job/knight run execute as @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run function neofunction:entity/.spawn/obj/item/sword
#使役
execute if function neofunction:entity/.spawn/obj/item/origin_job/tamer run execute as @s[nbt={Item:{id:"minecraft:bat_spawn_egg"}}] run function neofunction:entity/.spawn/obj/item/spawn_egg
execute if function neofunction:entity/.spawn/obj/item/origin_job/aria run execute as @s[nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function neofunction:entity/.spawn/obj/item/sword
execute if function neofunction:entity/.spawn/obj/item/origin_job/shooter run execute as @s[nbt={Item:{id:"minecraft:bow"}}] run function neofunction:entity/.spawn/obj/item/sword
execute if function neofunction:entity/.spawn/obj/item/origin_job/shooter run execute as @s[nbt={Item:{id:"minecraft:crossbow"}}] run function neofunction:entity/.spawn/obj/item/sword

# tag=del #clear @e kelp{del:1b}#execute as @s[nbt={Item:{del:1b}}] run tag @s add del
execute if data entity @s Item.components."minecraft:custom_data".del run kill @s

# cmd
execute if data entity @s Item.components."minecraft:custom_model_data".floats[0] run function neofunction:entity/.spawn/obj/item/cmd/.neo
