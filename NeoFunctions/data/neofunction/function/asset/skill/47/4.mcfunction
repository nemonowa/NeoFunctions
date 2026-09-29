# 命名：4
# 説明：スターラース・オクターブ
# >/function neofunction:system/adv/player_interacted_with_entity/horse
# =/function neofunction:asset/skill/47/4


# 内容：敵を発行浮遊させ、3度の爆発攻撃を加え爆発四散させる魔法
execute as @e[tag=skill47] at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 3 force
# 【変更：2026-09-28 26.3対応】flash パーティクルは 26.3 で色の指定が必須になったため、1.20.4 と同じ白を指定
execute as @e[tag=skill47] at @s run particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 1 1 1 0.1 1 force
execute as @e[tag=skill47] at @s run playsound minecraft:entity.generic.explode record @a[distance=..32] ~ ~ ~ 1 1 0.01
execute as @e[tag=skill47] at @s run damage @s 240 minecraft:explosion by @a[tag=skilling,limit=1]
execute as @e[tag=skill47] run tag @s remove skill47