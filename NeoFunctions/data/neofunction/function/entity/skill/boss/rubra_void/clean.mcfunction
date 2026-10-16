# 命名：clean
# 説明：ボスの見た目・見張り役・技の目印・星屑・黒い心臓・黒い水を片付ける
# 実行条件：どこでも
# >/function neofunction:entity/skill/boss/rubra_void/spawn
# >/function neofunction:entity/skill/boss/rubra_void/despawn
# >/function neofunction:system/adv/tick/quest/40/fin/release
# >/function neofunction:system/world/ceresta/rubra/fin/reset_2
# =/function neofunction:entity/skill/boss/rubra_void/clean

# 内容
kill @e[type=block_display,tag=rubra_void_part]
kill @e[type=marker,tag=rubra_fin_mark]
kill @e[tag=rubra_fin_shard]
kill @e[type=marker,tag=rubra_void_ctl]
kill @e[type=ghast,tag=rubra_heart]
kill @e[type=item_display,tag=rubra_heart_v]
kill @e[type=marker,tag=rubra_heart_rot]
execute as @e[type=marker,tag=rubra_ink] at @s if block ~ ~ ~ minecraft:black_carpet run setblock ~ ~ ~ minecraft:air
kill @e[type=marker,tag=rubra_ink]
# 第 3 形態の縁の黒いカーペット
function neofunction:entity/skill/boss/rubra_void/rim_off
kill @e[type=item_display,tag=rubra_blt]
kill @e[type=item_display,tag=rubra_ublt]
kill @e[type=marker,tag=rubra_blt_rot]
kill @e[type=block_display,tag=rubra_bstar]
kill @e[type=block_display,tag=rubra_bstar_big]
