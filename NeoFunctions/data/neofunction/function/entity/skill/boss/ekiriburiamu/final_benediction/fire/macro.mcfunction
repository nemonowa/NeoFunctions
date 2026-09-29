# 命名：macro
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/macro

$execute as @a[distance=..$(Radius),predicate=neofunction:player] run damage @s 10 in_fire by @e[tag=ekiriburiamu,limit=1,sort=nearest]
