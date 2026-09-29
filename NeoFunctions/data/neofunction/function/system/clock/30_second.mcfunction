# 命名：30_second
# 説明：低周期クロック
# 実行条件：30秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/30_second



# 内容
# 全列挙の武器追加効果CD終了通知　(いつかファンクションにまとめたい)
execute as @a[advancements={neofunction:player_hurt_entity/1284=true}] at @s run function neofunction:asset/tellraw/cdweapon
execute as @a[advancements={neofunction:player_hurt_entity/1286=true}] at @s run function neofunction:asset/tellraw/cdweapon
execute as @a[advancements={neofunction:player_hurt_entity/1288=true}] at @s run function neofunction:asset/tellraw/cdweapon
execute as @a[advancements={neofunction:player_hurt_entity/1290=true}] at @s run function neofunction:asset/tellraw/cdweapon
# 全列挙の防具追加効果CD終了通知　(いつかファンクションにまとめたい)
execute as @a[advancements={neofunction:entity_hurt_player/1285=true}] at @s run function neofunction:asset/tellraw/cdarmor
execute as @a[advancements={neofunction:entity_hurt_player/1287=true}] at @s run function neofunction:asset/tellraw/cdarmor
execute as @a[advancements={neofunction:entity_hurt_player/1291=true}] at @s run function neofunction:asset/tellraw/cdarmor
execute as @a[advancements={neofunction:entity_hurt_player/1303=true}] at @s run function neofunction:asset/tellraw/cdarmor
execute as @a[advancements={neofunction:entity_hurt_player/1307=true}] at @s run function neofunction:asset/tellraw/cdarmor
execute as @a[advancements={neofunction:entity_hurt_player/1315=true}] at @s run function neofunction:asset/tellraw/cdarmor

#
advancement revoke @a from neofunction:.clock/30s
execute as @e[type=minecraft:armor_stand,tag=30s] at @s run tp @s ~ ~3.0 ~


# 落下ブロックの寿命超過処理
execute as @e[type=falling_block] if data entity @s {OnGround:1b} run kill @s

# water
kill @e[tag=del30s]

# ms1会話用タグ削除
tag @a[tag=ms1] remove ms1

# skillclock
function neofunction:entity/skill/clock/30s

#アーマー保護を消す
execute as @a[tag=!froggame] at @s run execute unless entity @e[tag=boss,distance=..64] run function neofunction:player/armor/lock/unset

schedule clear neofunction:system/clock/30_second
schedule function neofunction:system/clock/30_second 30s
