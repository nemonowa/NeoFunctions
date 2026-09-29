# 命名：sound5
# 説明：スターラース・トリニティ
# >/function neofunction:system/adv/player_interacted_with_entity/horse
# =/function neofunction:asset/skill/47/sound5


# 内容：敵を発行浮遊させ、8回の継続ダメージを与え最後に爆発四散させる魔法の効果音
execute as @e[tag=skill47] at @s run playsound minecraft:block.amethyst_block.chime record @a[distance=..32] ~ ~ ~ 2 1
execute as @e[tag=skill47] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.3 30 force
execute as @e[tag=skill47] at @s run damage @s 20 minecraft:explosion by @a[tag=skilling,limit=1]
