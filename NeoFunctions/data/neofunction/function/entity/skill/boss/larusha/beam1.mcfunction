# 命名：beam1
# 説明：
# >/function neofunction:entity/skill/boss/larusha/skill 実行者as @e[type=wither_skeleton,tag=larusha,tag=!nowskilling] if score @s temp matches 15..35 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/beam1


me §fは§6§l§n鏡反射の陽光砲§fを唱えた！！
playsound item.trident.return master @a[distance=..30] ~ ~ ~ 1.0 0.5

schedule function neofunction:entity/skill/boss/larusha/beam2 18t append
schedule function neofunction:entity/skill/boss/larusha/beam2 36t append
schedule function neofunction:entity/skill/boss/larusha/beam2 54t append
schedule function neofunction:entity/skill/boss/larusha/beam2 72t append
schedule function neofunction:entity/skill/boss/larusha/beam2 90t append
schedule function neofunction:entity/skill/boss/larusha/beam2 108t append

