# 命名：doctor-skill248
# 説明：248 毒消しの処方（デバフ解除／回復なし・トリガー式・単体対象）
# 説明：245/246/247と同じく「4ブロック以内・glowing amplifier:105の命中マーカー付き@a」を対象とするトリガー式。
# 説明：対象の代表的な状態異常を即座に全解除する。回復は付与しない（その分SPコストは軽め）。
# >
# =/function neofunction:asset/skill/248

tag @s remove skill242
tag @s remove skill243
tag @s remove skill244
tag @s remove skill249

execute if entity @s[tag=skill248] run tellraw @s {"text":"毒消しの処方 OFF","color":"red"}
execute if entity @s[tag=skill248] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill248] run return run tag @s remove skill248

tag @s add skill248
execute if entity @s[tag=skill248] run tellraw @s {"text":"毒消しの処方 ON","color":"green"}
execute if entity @s[tag=skill248] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
