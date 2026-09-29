# 命名：fire_macro
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/tick
# =/function neofunction:entity/skill/boss/ekiriburiamu/fire_macro

$execute as @a[distance=..$(Radius),predicate=neofunction:player] run damage @s 5 in_fire by @e[tag=ekiriburiamu,limit=1,sort=nearest]
