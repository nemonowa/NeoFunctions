# 命名：reblack
# 説明：【追加：2026-10-09 ルブラ編】洗われている時間が終わった：番人の体に、また黒い水が滲み出す（黒い部分が戻り、攻撃が通らなくなる）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/reblack

# 内容
execute as @e[type=block_display,tag=rubra_keeper_black] run data merge entity @s {view_range:1.0f}
execute as @e[type=block_display,tag=rubra_keeper_part] run data merge entity @s {Glowing:0b}
particle minecraft:squid_ink ~ ~3 ~ 1 2 1 0.02 60 normal
playsound minecraft:block.sculk.spread hostile @a[distance=..48] ~ ~3 ~ 2 0.5
tellraw @a[distance=..40] {"text":"番人のひび割れから、また黒い水が滲み出した……。","color":"#6E7390","italic":true}
# 【変更：2026-10-14】第二段階なら、番人のまわりの黒い水の帯を敷き直す（洗い流したときに全部流しているので、水溜まりがたまっていかない）
execute if data storage neofunction:rubra keeper{phase:2} run function neofunction:entity/skill/boss/rubra_keeper/band
