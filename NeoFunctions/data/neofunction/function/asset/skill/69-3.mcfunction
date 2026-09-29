# 命名：フロッグリップル - 波紋3（半径8・最終波）
# 説明：中心撃の12tick後。半径8の輪で着弾判定を締める。検知範囲(8マス)ぎりぎりまで波紋が届く
# 説明：豪雨ボーナス成立時は、範囲内(距離8以内)の敵全員に確定でチップダメージが追加で入り、演出も一段強化される
# =/function neofunction:asset/skill/69-3

execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=7..9.5] run damage @s 30 lightning_bolt by @a[tag=This,limit=1]
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=7..9.5] at @s run particle electric_spark ~ ~ ~ 0 3 0 0 100

# 最終衝撃波（一番大きく）＋フラッシュで締める
#execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle sonic_boom ~ ~0.2 ~ 0 0 0 0 3
# 【変更：2026-09-28 26.3対応】flash パーティクルは 26.3 で色の指定が必須になったため、1.20.4 と同じ白を指定
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~0.1 ~ 0 0 0 0 1

# 輪：電撃(青白)とカエル色(緑)を交互に16方向へ配置
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~8 ~ ~0 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~7.391 ~ ~3.062 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~5.657 ~ ~5.657 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~3.062 ~ ~7.391 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~0 ~ ~8 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-3.062 ~ ~7.391 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-5.657 ~ ~5.657 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-7.391 ~ ~3.062 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-8 ~ ~0 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-7.391 ~ ~-3.062 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-5.657 ~ ~-5.657 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-3.062 ~ ~-7.391 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~0 ~ ~-8 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~3.062 ~ ~-7.391 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~5.657 ~ ~-5.657 run particle electric_spark ~ ~0.1 ~ 0 0.3 0 0 8
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~7.391 ~ ~-3.062 run particle dust{color:[0.2,0.9,0.3],scale:1.3} ~ ~0.1 ~ 0 0 0 0 4

playsound entity.lightning_bolt.thunder player @a[tag=This,limit=1] ~ ~ ~ 0.6 1.2
#playsound entity.warden.sonic_boom player @a[tag=This,limit=1] ~ ~ ~ 0.5 1.0
playsound block.amethyst_block.chime player @a[tag=This,limit=1] ~ ~ ~ 0.5 0.8

# 豪雨ボーナス：範囲内の敵に確定チップダメージ＋演出強化
execute if score @s RippleBonus matches 1 at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=..8] run damage @s 30 lightning_bolt by @a[tag=This,limit=1]
execute if score @s RippleBonus matches 1 at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=..8] at @s run particle electric_spark ~ ~ ~ 0 3 0 0 100
execute if score @s RippleBonus matches 1 at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle cloud ~ ~0.2 ~ 4 0.2 4 0 40
execute if score @s RippleBonus matches 1 at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle dust{color:[0.2,0.9,0.3],scale:1.5} ~ ~0.2 ~ 4 0.3 4 0 20
execute if score @s RippleBonus matches 1 run playsound entity.elder_guardian.curse player @a[tag=This,limit=1] ~ ~ ~ 0.6 1.2
execute if score @s RippleBonus matches 1 run title @s actionbar {"text":"豪雨ボーナス発動！","color":"aqua","bold":true}

# 後片付け
kill @e[tag=FrogRippleAnchor]
tag @s remove This
scoreboard players set @s RippleBonus 0
