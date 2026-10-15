# 命名：heart_break
# 説明：黒い心臓が砕けて消える（form3 が数の減りを見て顎を 10 削る）
# 実行条件：実行者 黒い心臓
# >/function neofunction:entity/skill/boss/rubra_void/heart_check
# =/function neofunction:entity/skill/boss/rubra_void/heart_break

# 内容
particle minecraft:block{block_state:"minecraft:crying_obsidian"} ~ ~1 ~ 0.6 0.6 0.6 0 40 force @a[distance=..160]
particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.1 40 force @a[distance=..160]
particle minecraft:flash{color:[1.0,0.85,0.5,1.0]} ~ ~1 ~ 0 0 0 0 1 force @a[distance=..160]
playsound minecraft:entity.warden.heartbeat hostile @a[distance=..160] ~ ~ ~ 3 1.4
playsound minecraft:block.glass.break hostile @a[distance=..160] ~ ~ ~ 3 0.6
kill @s
