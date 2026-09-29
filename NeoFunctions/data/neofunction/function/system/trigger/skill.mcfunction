# 命名：skill
# 説明：トリガー：スキル習得用処理
# 説明：@a[scores={skill=1..}]
# 説明：chat trigger score storage macro function skill
# >/function neofunction:system/1_detection
# =/function neofunction:system/trigger/skill


# 内容（スコアをストレージに変換して、マクロで対応するスキル関数を発動
tellraw @s[gamemode=creative] [{"text":"注：旧式の処理です！","color":"red"}]
execute store result storage neofunction:trigger skill int 1 run scoreboard players get @s skill
function neofunction:system/trigger/skill/.macro with storage neofunction:trigger

# 引き直し
scoreboard players set @s skill 0
scoreboard players enable @s skill
advancement revoke @s only neofunction:tick/entity_scores/trigger/skill