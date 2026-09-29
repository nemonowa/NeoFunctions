# 命名：white
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/valerica/tick
# =/function neofunction:entity/skill/boss/valerica/white

$bossbar set neofunction:boss/$(ID) color white
execute store result score @s HPmax run attribute @s max_health get