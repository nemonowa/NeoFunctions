# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/.neo

execute if score @s generaltimer matches 521 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/init

execute if score @s generaltimer matches 541 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/pre1

execute if score @s generaltimer matches 581 run function neofunction:entity/skill/jump_burst/.neo
execute unless entity @s[tag=!JumpBurst1,tag=!JumpBurst2] if score @s generaltimer matches 582 run scoreboard players set @s generaltimer 581

execute if score @s generaltimer matches 591 run function neofunction:entity/skill/jump_burst/.neo
execute unless entity @s[tag=!JumpBurst1,tag=!JumpBurst2] if score @s generaltimer matches 592 run scoreboard players set @s generaltimer 591

execute if score @s generaltimer matches 601 run function neofunction:entity/skill/jump_burst/.neo
execute unless entity @s[tag=!JumpBurst1,tag=!JumpBurst2] if score @s generaltimer matches 602 run scoreboard players set @s generaltimer 601

execute if score @s generaltimer matches 611 run function neofunction:entity/skill/jump_burst/.neo
execute unless entity @s[tag=!JumpBurst1,tag=!JumpBurst2] if score @s generaltimer matches 612 run scoreboard players set @s generaltimer 611

execute if score @s generaltimer matches 621 run function neofunction:entity/skill/jump_burst/.neo
execute unless entity @s[tag=!JumpBurst1,tag=!JumpBurst2] if score @s generaltimer matches 622 run scoreboard players set @s generaltimer 621

execute if score @s generaltimer matches 641 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/pre2

execute if score @s generaltimer matches 681 run function neofunction:entity/skill/jump_burst/.neo
execute unless entity @s[tag=!JumpBurst1,tag=!JumpBurst2] if score @s generaltimer matches 682 run scoreboard players set @s generaltimer 681

execute if score @s generaltimer matches 691 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/explosion1
execute if score @s generaltimer matches 701 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/explosion2