# 命名：tamer/follow_check_owner
# 説明：飼い主のUUIDにテレポート。飼い主の情報はゴーレムたちの足の装備に記録している。
# 呼び出し元(execute as @e[tag=familiarFollow] at @s run function ...)でas/atされた
# >/function neofunction:entity/skill/clock/5s 実行者if entity @e[tag=familiar] as @a 実行位置@s(@a時点)
# =/function neofunction:asset/skill/tamer/follow_check_owner


tag @s add OwnerUUID
execute as @e[tag=familiar] at @s run function neofunction:asset/skill/tamer/follow_warp with entity @a[tag=OwnerUUID,limit=1]
tag @s remove OwnerUUID
