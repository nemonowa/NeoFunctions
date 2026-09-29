# 命名：all_clock_start
# 説明：初期設定
# 説明：ワールド初期生成時、リロード時
# >/function neofunction:#minecraft:load
# =/function neofunction:system/clock/all_clock_start


# 内容
playsound minecraft:item.spyglass.use master @a ~ ~ ~ 1.5 0.3 1
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/clock/all_clock_start"}
function neofunction:system/clock/1_second
function neofunction:system/clock/3_second
function neofunction:system/clock/5_second
function neofunction:system/clock/10_second
function neofunction:system/clock/15_second
function neofunction:system/clock/30_second
function neofunction:system/clock/60_second
function neofunction:system/clock/300_second
function neofunction:system/clock/600_second
function neofunction:system/clock/1200_second
function neofunction:system/clock/3600_second
