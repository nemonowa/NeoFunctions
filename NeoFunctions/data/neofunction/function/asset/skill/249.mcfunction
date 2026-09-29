# 命名：doctor-skill249
# 説明：249 万能秘薬・パラケルススの遺産（奥義／術者中心AoE）
# 説明：発動すると術者を中心に6ブロック以内へ黄金の霧が広がる。
# 説明：範囲内の味方(@a)には全回復＋バフ、範囲内の敵(tag=enemy)には毒＋継続ダメージ(衰弱)＋防御低下を付与する。
# 説明：発動条件は246と同じく「術者自身にglowing amplifier:105の命中マーカーが付いている」こと（自己発動トリガー）。
# 説明：防御低下はヴァニラにエフェクトが存在しないため、attributeコマンドで一時的にarmorを下げ、schedule functionで
# 説明：doctor-skill249-defdown-clearを呼び出して数秒後に解除する（固定UUIDでmodifierを管理）。
# >
# =/function neofunction:asset/skill/249

execute if entity @s[tag=skill249] run tellraw @s {"text":"万能秘薬・パラケルススの遺産 OFF","color":"red"}
execute if entity @s[tag=skill249] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 0.7
execute if entity @s[tag=skill249] run return run tag @s remove skill249

tag @s add skill249
execute if entity @s[tag=skill249] run tellraw @s {"text":"万能秘薬・パラケルススの遺産 ON","color":"green"}
execute if entity @s[tag=skill249] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1.5
