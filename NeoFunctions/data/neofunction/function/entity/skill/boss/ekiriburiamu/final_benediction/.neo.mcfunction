# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/tick
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/.neo

scoreboard players add @s generaltimer 1
execute if score @s generaltimer matches 1 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/init
execute if score @s generaltimer matches 40..240 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/.neo
execute if score @s generaltimer matches 241..440 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/.neo
execute if score @s generaltimer matches 441..520 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/.neo
execute if score @s generaltimer matches 521..701 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/.neo

execute if score @s generaltimer matches 721 run say 「……なお立つか。」
execute if score @s generaltimer matches 741 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/finish