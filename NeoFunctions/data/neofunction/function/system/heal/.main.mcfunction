# 命名：.main
# 説明：HPの回復演算機構
# 説明：条件：もしスコアhealが4以上のプレイヤーがいれば、その対象が実行する。
# >
# =/function neofunction:system/heal/.main


#HPを4点（ハート２つ分）回復
effect give @s[scores={heal=4..}] minecraft:instant_health 1 0 true
scoreboard players remove @s[scores={heal=4..}] heal 4