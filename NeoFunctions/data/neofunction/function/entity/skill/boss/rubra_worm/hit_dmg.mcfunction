# 命名：hit_dmg
# 説明：攻撃した人の攻撃力（attribute attack_damage）の 1.5 倍を worm.dmg に入れて、本体に与える
# 実行条件：実行者 攻撃したプレイヤー
# >/function neofunction:entity/skill/boss/rubra_worm/hit
# =/function neofunction:entity/skill/boss/rubra_worm/hit_dmg

# 内容
execute store result storage neofunction:rubra worm.dmg float 0.15 run attribute @s minecraft:attack_damage get 10
function neofunction:entity/skill/boss/rubra_worm/hit_apply with storage neofunction:rubra worm
