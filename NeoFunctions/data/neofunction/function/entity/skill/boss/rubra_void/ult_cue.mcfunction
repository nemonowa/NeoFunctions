# 命名：ult_cue
# 説明：【追加：2026-10-14 ルブラ編】必殺技の型の変わり目の合図：文字は出さず、本体が赤く閃き、低くうなる
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_cue

# 内容
particle minecraft:flash{color:[0.85,0.1,0.2,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
particle minecraft:sculk_soul ~ ~ ~ 5 5 5 0.08 120 force @a[distance=..200]
playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..200] ~ ~ ~ 4 0.5
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..200] ~ ~ ~ 4 0.5
