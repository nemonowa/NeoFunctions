# 命名：blast
# 説明：【追加：2026-10-09 ルブラ編】星の欠片が弾ける（星葬弓の写し）：半径 6 の小さな爆発。敵（タグ enemy）だけに、3 マスまで 8、6 マスまで 4 ダメージ。ブロックは壊さない・プレイヤーには当たらない
# 実行条件：実行位置 当たった所
# >/function neofunction:asset/enchantment/shuuen_replica/hit
# =/function neofunction:asset/enchantment/shuuen_replica/blast

# 内容
particle minecraft:explosion ~ ~0.5 ~ 0.6 0.4 0.6 0 3 force
particle minecraft:flash{color:[1.0,0.85,0.5,1.0]} ~ ~0.5 ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.25 40 force
particle minecraft:dust{color:[1.0,0.6,0.3],scale:1.5} ~ ~0.5 ~ 2.5 0.8 2.5 0 40 force
playsound minecraft:entity.firework_rocket.blast player @a[distance=..32] ~ ~ ~ 1.2 0.8
execute if entity @p[distance=..64] as @e[tag=enemy,type=!player,distance=..3] run damage @s 8 minecraft:player_explosion by @p
execute unless entity @p[distance=..64] as @e[tag=enemy,type=!player,distance=..3] run damage @s 8 minecraft:explosion
execute if entity @p[distance=..64] as @e[tag=enemy,type=!player,distance=3..6] run damage @s 4 minecraft:player_explosion by @p
execute unless entity @p[distance=..64] as @e[tag=enemy,type=!player,distance=3..6] run damage @s 4 minecraft:explosion
