# 命名：hit
# 説明：【追加：2026-10-09 ルブラ編】欠片の当たり判定が攻撃された：その欠片を砕く（どの欠片かはタグ rubra_fraghit1〜6 で）
# 実行条件：実行者 攻撃された interaction（タグ rubra_fraghit）
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/hit

# 内容
data remove entity @s attack
execute if entity @s[tag=rubra_fraghit1] run return run function neofunction:entity/skill/boss/rubra_cradle/break {i:"1"}
execute if entity @s[tag=rubra_fraghit2] run return run function neofunction:entity/skill/boss/rubra_cradle/break {i:"2"}
execute if entity @s[tag=rubra_fraghit3] run return run function neofunction:entity/skill/boss/rubra_cradle/break {i:"3"}
execute if entity @s[tag=rubra_fraghit4] run return run function neofunction:entity/skill/boss/rubra_cradle/break {i:"4"}
execute if entity @s[tag=rubra_fraghit5] run return run function neofunction:entity/skill/boss/rubra_cradle/break {i:"5"}
execute if entity @s[tag=rubra_fraghit6] run return run function neofunction:entity/skill/boss/rubra_cradle/break {i:"6"}
