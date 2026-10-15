# 命名：catch
# 説明：舞台から落ちた人を、星の光が拾い上げて入口へ戻す（4 ダメージ）
# 実行条件：実行者 落ちた人
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/catch

# 内容
execute in neodimension:ceresta_festa run tp @s 921.5 200 3306.5 180 0
effect give @s minecraft:slow_falling 3 0 true
damage @s 4 minecraft:magic
tellraw @s {"text":"夜空へ落ちかけたあなたを、星の光が拾い上げた。","color":"#B8D8FF","italic":true}
