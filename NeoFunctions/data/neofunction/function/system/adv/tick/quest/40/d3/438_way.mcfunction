# 命名：438_way
# 説明：戦い方の結果のひとこと：守り石だけで救った（stone）なら「傷ひとつない」、砕いた（break）なら「欠片の抜けた跡が赤く腫れている」
# 実行条件：実行者 プレイヤー（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/438（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/438_way

# 内容
execute if data storage neofunction:rubra choice{selen_way:"stone"} run tellraw @s {"text":"セレンの手のひらに、傷ひとつない。欠片は、守り石の光に包まれて、すべてそっと抜け落ちていた。","color":"#A8D8FF","italic":true}
execute unless data storage neofunction:rubra choice{selen_way:"stone"} run tellraw @s {"text":"セレンの手のひらの、欠片が砕けた跡が、赤く腫れていた。","color":"gray","italic":true}
