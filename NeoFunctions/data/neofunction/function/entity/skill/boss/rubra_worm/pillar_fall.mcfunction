# 命名：pillar_fall
# 説明：【追加：2026-10-14 ルブラ編】柱が崩れ落ちる（床から天井の下まで。崩れた石は消す）
# 実行条件：実行者・実行位置 柱の目印
# >/function neofunction:entity/skill/boss/rubra_worm/pillar_hit
# =/function neofunction:entity/skill/boss/rubra_worm/pillar_fall

# 内容
fill ~-1 -40 ~-1 ~1 -14 ~1 minecraft:air destroy
kill @e[type=item,distance=..30]
particle minecraft:explosion_emitter ~ ~6 ~ 1 4 1 0 3 normal
particle minecraft:block{block_state:"minecraft:deepslate_bricks"} ~ ~6 ~ 1.5 6 1.5 0 300 normal
playsound minecraft:entity.generic.explode block @a[distance=..64] ~ ~ ~ 3 0.5
playsound minecraft:block.deepslate_bricks.break block @a[distance=..64] ~ ~ ~ 3 0.4
kill @s
