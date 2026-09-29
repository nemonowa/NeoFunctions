# 命名：0
# 説明：チュートリアル看板処理
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/sign/nexus/hatch/0


# 移動：テレポート
execute as @s at @s run tp @s ~ ~ ~-14 ~ ~
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.3 2 0
execute as @s at @s run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.3 90 force
title @s actionbar {"text":"告：前の部屋に転送","bold":true,"italic":false}

# 次の部屋のリセット処理
execute in neodimension:nexus run fill 1281 112 1325 1278 111 1325 white_stained_glass

