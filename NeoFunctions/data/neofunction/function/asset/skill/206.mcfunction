# 命名：獅子吼【バトルクライ】（※未提供の206/1〜5の内容が見えないための推測名。要確認）
# 説明：8m以内の味方に耐性・筋力を3秒間付与する鼓舞スキル。1t/5t/10t/15t/20t後に206/1〜5が呼ばれ、段階的な追加演出（例：気迫のオーラが徐々に収束していく等）が入る想定。
# >
# =/function neofunction:asset/skill/206


# 内容
tag @s add 206

execute at @s run effect give @a[distance=..8] resistance 60 0
execute at @s run effect give @a[distance=..8] strength 60 0

schedule function neofunction:asset/skill/206/1 1t append

schedule function neofunction:asset/skill/206/2 5t append

schedule function neofunction:asset/skill/206/3 10t append

schedule function neofunction:asset/skill/206/4 15t append

schedule function neofunction:asset/skill/206/5 20t append

scoreboard players remove @s SP 30
