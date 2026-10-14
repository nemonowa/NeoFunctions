# 命名：despawn
# 説明：【追加：2026-10-09 ルブラ編】近くに誰もいなくなった（全滅・離脱）：ボスを片付け、時の流れを戻し、進み具合を 443 に。塔のミラに話しかけると、すぐやり直し（舞台は残す）
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/despawn

# 内容
data modify storage neofunction:rubra fin merge value {state:"gone",retry:1b,pull:0,c:0,drag:0,rw:0,open:0,u:0,rp:0,vul:0b}
function neofunction:entity/skill/boss/rubra_void/clean
execute as @e[type=zombie,tag=rubra_fin_drip] run tag @s add del
function neofunction:entity/skill/boss/rubra_void/pillars_off
function neofunction:entity/skill/boss/rubra_void/day
kill @s
execute if score #temp main_story matches 444..445 run scoreboard players set #temp main_story 443
execute unless data storage neofunction:rubra fin{refight:1b} run tellraw @a {"text":"……ヴォイド・ゼロに押し返された。星見の塔の一階にいるミラに話しかけると、もう一度挑める（たどり着いた形態から）。","color":"gray","italic":true}
execute if data storage neofunction:rubra fin{refight:1b} run tellraw @a {"text":"……ヴォイド・ゼロに押し返された。転移の本で「星還りの空」へ戻り、セレンに話しかけると、もう一度挑める（たどり着いた形態から）。","color":"gray","italic":true}
