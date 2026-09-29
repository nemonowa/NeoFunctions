# 命名：on
# 説明：トリガー：スキル発動用処理
# 説明：@a[scores={on=1..}]
# >/function neofunction:system/1_detection
# =/function neofunction:system/trigger/on


# 一度切りスコア作成
#scoreboard objectives add on trigger

# 内容（スコアをストレージに変換して、マクロで対応するスキル関数を発動
execute store result storage neofunction:trigger on int 1 run scoreboard players get @s on
function neofunction:system/trigger/on/.macro with storage neofunction:trigger

# 引き直し
scoreboard players set @s on 0
scoreboard players enable @s on
advancement revoke @s only neofunction:tick/entity_scores/trigger/on