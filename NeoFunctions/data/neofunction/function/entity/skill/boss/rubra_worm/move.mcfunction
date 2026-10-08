# 命名：move
# 説明：【追加：2026-10-08 ルブラ編】頭（本体）を目標へ s ずつ進める。着いたら arrive
# 実行条件：実行者・実行位置 本体。引数 x y z s（worm.goal）
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/move

# 内容
$execute facing $(x) $(y) $(z) run tp @s ^ ^ ^$(s)
$execute positioned $(x) $(y) $(z) if entity @s[distance=..1] run function neofunction:entity/skill/boss/rubra_worm/arrive
