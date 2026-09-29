# 命名：doctor-skill247
# 説明：247 秘薬散布（状態異常耐性オーラ／トリガー式・単体対象）
# 説明：245/246と同じく「4ブロック以内・glowing amplifier:105の命中マーカー付き@a」を対象とするトリガー式。
# 説明：対象に ward247 タグを付与し、LVL帯ごとの持続時間ぶん、20t間隔で ward_tick(247-1) を複数回schedule、
# 説明：最後に1回だけ ward_end(247-2) をscheduleしてタグを除去する（スコアボードのカウントダウンは使わない）。
# 説明：ward_tick/ward_endが実際の状態異常クリア処理を行う（ヴァニラに「デバフ無効」効果が無いため、
# 説明：定期的にeffect clearし続けることで疑似的な耐性オーラを再現している）。
# >
# =/function neofunction:asset/skill/247

tag @s remove skill242
tag @s remove skill243
tag @s remove skill244
tag @s remove skill249

execute if entity @s[tag=skill247] run tellraw @s {"text":"秘薬散布 OFF","color":"red"}
execute if entity @s[tag=skill247] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill247] run return run tag @s remove skill247

tag @s add skill247
execute if entity @s[tag=skill247] run tellraw @s {"text":"秘薬散布 ON","color":"green"}
execute if entity @s[tag=skill247] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
