# 命名：手裏剣
# 説明：発動時、周囲16mの敵に30sの炎上状態を付与する。（SP10消費）
# >/function neofunction:system/adv/player_hurt_entity/130
# >/function neofunction:asset/skill/253
# =/function neofunction:player/job/assasin/skill-range


# 手裏剣
playsound entity.endermite.step master @s ~ ~ ~ 2 0.7 1
damage @e[tag=hit,limit=1] 10 generic by @s
execute as @e[tag=hit,limit=1] at @s run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 60 force @a[distance=..64]
loot give @s loot neofunction:item/130


# SP消費：
scoreboard players remove @s SP 2




