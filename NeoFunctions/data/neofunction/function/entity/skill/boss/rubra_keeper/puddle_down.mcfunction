# 命名：puddle_down
# 説明：【追加：2026-10-09 ルブラ編】黒い水溜まりを置く高さを探す：足もとの下が地面ならそこに置く。宙なら 1 マス下へ（4 マスまで。見つからなければ置かない）
# 実行条件：実行位置 調べる高さ（#rk_dn temp に下りた回数）
# >/function neofunction:entity/skill/boss/rubra_keeper/puddle_at
# >/function neofunction:entity/skill/boss/rubra_keeper/puddle_down
# =/function neofunction:entity/skill/boss/rubra_keeper/puddle_down

# 内容
execute unless block ~ ~-1 ~ #minecraft:replaceable run return run function neofunction:entity/skill/boss/rubra_keeper/puddle_place
scoreboard players add #rk_dn temp 1
execute if score #rk_dn temp matches 5.. run return 0
execute positioned ~ ~-1 ~ run function neofunction:entity/skill/boss/rubra_keeper/puddle_down
