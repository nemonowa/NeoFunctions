# 命名：puddle_at
# 説明：その場に黒い水溜まり（黒いカーペット、5×5）
# 説明：狙われた人が跳んでいたり足場の端にいたりしても宙に浮かないように、まず下へ 4 マスまで地面を探し、置くときも 1 マスずつ下が地面かを確かめる
# 実行条件：実行位置 狙われた人の足もと
# >/function neofunction:entity/skill/boss/rubra_keeper/puddle
# =/function neofunction:entity/skill/boss/rubra_keeper/puddle_at

# 内容
scoreboard players set #rk_dn temp 0
execute align y run function neofunction:entity/skill/boss/rubra_keeper/puddle_down
