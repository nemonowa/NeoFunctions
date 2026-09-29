# 命名：difficulty
# 説明：score_to_attribute。difficultyのスコア％だけ敵のステータスを変動させる。
# 説明：スコアボードでは扱えない少数値をストレージで扱うときのdouble型
# 説明：difficultyのスコアは100が基準で経過日数毎に+1 死亡回数ごとに-1
# >/function neofunction:entity/.spawn/hp/mob/enemy
# =/function neofunction:entity/attribute/difficulty



# 内容
scoreboard players operation difficulty temp = difficulty world
scoreboard players remove difficulty temp 100
# ここにオプションで(-15~15%)の個体差を付与する処理を追加
execute store result storage neofunction:difficulty world double 0.01 run scoreboard players get difficulty world


# マクロ発動用
function neofunction:player/attribute/difficulty/macro with storage neofunction:difficulty