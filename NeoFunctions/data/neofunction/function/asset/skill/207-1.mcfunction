# 命名：207-1
# 説明：不動【フォートレス】の常駐ループ。8m以内の敵に毎秒鈍足を撒く挑発演出、効果終了時に周囲へ衝撃波ダメージを発生させて解除する。
# 説明：（旧コメントに「共鳴領域」という無関係な説明が残っていたため207の内容に合わせて修正）
# >
# =/function neofunction:asset/skill/207-1


# 効果：


# 終了処理（skill207の目印entityが消えたら効果終了とみなす）
execute unless entity @e[tag=skill207] run execute as @a[tag=skillironwill] at @s run execute as @e[tag=enemy,distance=..4] run damage @s 15 minecraft:generic by @p[tag=skillironwill,limit=1,sort=nearest]
execute unless entity @e[tag=skill207] run execute as @a[tag=skillironwill] at @s run particle explosion ~ ~1 ~ 0.3 0.3 0.3 0 5 force
execute unless entity @e[tag=skill207] run execute as @a[tag=skillironwill] at @s run playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 1 1.2
execute unless entity @e[tag=skill207] run execute as @a[tag=skillironwill] run attribute @s minecraft:knockback_resistance modifier remove neofunction:00000000-0001-0000-0000-000000000000
execute unless entity @e[tag=skill207] run return run execute as @a[tag=skillironwill] run say 不動の効果が切れた


# ループ中：挑発演出（周囲の敵の足を止めて壁役に引きつける）
execute as @a[tag=skillironwill] at @s run effect give @e[tag=enemy,distance=..8] slowness 1 0
execute as @a[tag=skillironwill] at @s run particle enchant ~ ~1 ~ 0.5 1 0.5 0.02 10 force
schedule function neofunction:asset/skill/207-1 1s append

