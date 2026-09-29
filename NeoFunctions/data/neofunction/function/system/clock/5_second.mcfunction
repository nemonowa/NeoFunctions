# 命名：低周期クロック
# 説明：5秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/5_second


# 内容
advancement revoke @a from neofunction:.clock/5s
execute as @e[type=minecraft:armor_stand,tag=5s] at @s run tp @s ~ ~1.0 ~

# SP自然回復
execute unless score nosp temp matches -1 run function neofunction:player/sp/regene/5s

# マモンが勝手に集まる処理
execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star"}}] run function neofunction:entity/.spawn/obj/item/firework_star

# kill
kill @e[tag=del5s]

# skillclock
function neofunction:entity/skill/clock/5s

#　再装填
schedule clear neofunction:system/clock/5_second
schedule function neofunction:system/clock/5_second 5s
