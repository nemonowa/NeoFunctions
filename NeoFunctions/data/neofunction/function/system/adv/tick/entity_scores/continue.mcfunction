# 命名：continue
# 説明：実行条件はスコアがcontinue=!0の場合
# >
# =/function neofunction:system/adv/tick/entity_scores/continue


# 再装填
scoreboard players reset @s continue

# 内容
tellraw @s[gamemode=creative] [{"text":"Relog-in"}]
function neofunction:asset/event/log-in

