# 命名：attack
# 説明：【追加：2026-10-09 ルブラ編】星喰みのセレンの攻撃を選ぶ（2.5 秒ごと）：1・2 赤い光の矢、3 星の雨（【変更：2026-10-14】重さの向きが変わる攻撃はわかりにくいのでやめた）、4 影を呼ぶ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/attack

# 内容
execute store result score #rubra_r temp run random value 1..4
execute if score #rubra_r temp matches 1..2 run return run function neofunction:entity/skill/boss/rubra_cradle/arrow_start
execute if score #rubra_r temp matches 3 run return run function neofunction:entity/skill/boss/rubra_cradle/star_start
function neofunction:entity/skill/boss/rubra_cradle/attack_shadow
