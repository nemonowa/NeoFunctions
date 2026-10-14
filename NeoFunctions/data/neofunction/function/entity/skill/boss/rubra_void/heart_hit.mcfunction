# 命名：heart_hit
# 説明：【追加：2026-10-13 ルブラ編】黒い心臓が砕けた：顎がうめく
# 説明：【変更：2026-10-14】心臓を砕いても顎（本体）の体力は削らない。心臓は顎をこじ開けるための鍵（全部砕くと 15 秒開く、heart_phase → maw_open）
# 実行条件：実行者・実行位置 本体。#rv_hn0 に前の数、#rv_hn に今の数
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/heart_hit

# 内容
playsound minecraft:entity.warden.hurt hostile @a[distance=..160] ~ ~ ~ 3 0.6
particle minecraft:sculk_soul ~ ~ ~ 3 2 3 0.05 30 force @a[distance=..160]
