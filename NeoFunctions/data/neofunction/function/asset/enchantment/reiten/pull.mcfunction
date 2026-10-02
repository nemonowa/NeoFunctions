# 命名：pull
# 説明：吸引。球から 64 ブロック以内のモブと落ちているアイテムを、球の方へ毎 tick 0.8 ブロックずつ引き寄せる（プレイヤー・防具立て・friendly は除く）
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/reiten/tick
# =/function neofunction:asset/enchantment/reiten/pull


# 内容
execute as @e[type=item_display,tag=neo.nk_orb] if score @s neo.nk_id = #cur neo.nk_id if items entity @s contents minecraft:black_concrete run tag @s add neo.nk_this
execute positioned ~ ~12 ~ as @e[distance=1.5..64,type=!player,type=!armor_stand,tag=!friendly] if data entity @s HurtTime run function neofunction:asset/enchantment/reiten/pull_one
execute positioned ~ ~12 ~ as @e[distance=1..64,type=item] run function neofunction:asset/enchantment/reiten/pull_one
tag @e[tag=neo.nk_this] remove neo.nk_this
