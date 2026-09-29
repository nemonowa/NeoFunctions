# 命名：init
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/init

say 「終極試練 - Final Benediction -！」
execute positioned 1029 7 1765 run playsound entity.warden.sonic_charge hostile @a[distance=..32] ~ ~ ~ 10 1.2
tp @s ~ 7 ~
execute unless block ~ ~ ~ #neofunction:air run tp @s 1029 7 1765
effect give @s slowness 1000 10 true
effect give @s resistance 1000 3 true
tag @s remove ekiriwater
tag @s remove ekiriwind
tag @s remove ekiridirt
tag @s remove water
tag @s remove lev
tag @s remove dirtshield
tag @s remove ekirifire
tag @s remove bomb
kill @e[tag=ekiriArrow]
kill @e[tag=ekiriArrowCheck]
