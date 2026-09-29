# 命名：フロッグリップル - 波紋2（半径5.5）
# 説明：中心撃の8tick後。半径5.5の輪状に着弾判定＋16方向へ演出パーティクル。波紋が一段大きく育つ段階
# =/function neofunction:asset/skill/69-2

execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=4..7] run damage @s 30 lightning_bolt by @a[tag=This,limit=1]
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=4..7] at @s run particle electric_spark ~ ~ ~ 0 3 0 0 100

# 衝撃波（一段大きく）
#execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle sonic_boom ~ ~0.2 ~ 0 0 0 0 2

# 輪：電撃(青白)とカエル色(緑)を交互に16方向へ配置
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~5.5 ~ ~0 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~5.081 ~ ~2.105 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~3.889 ~ ~3.889 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~2.105 ~ ~5.081 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~0 ~ ~5.5 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-2.105 ~ ~5.081 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-3.889 ~ ~3.889 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-5.081 ~ ~2.105 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-5.5 ~ ~0 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-5.081 ~ ~-2.105 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-3.889 ~ ~-3.889 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-2.105 ~ ~-5.081 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~0 ~ ~-5.5 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~2.105 ~ ~-5.081 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~3.889 ~ ~-3.889 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~5.081 ~ ~-2.105 run particle dust{color:[0.2,0.9,0.3],scale:1.1} ~ ~0.1 ~ 0 0 0 0 3

playsound entity.lightning_bolt.impact player @a[tag=This,limit=1] ~ ~ ~ 0.5 1.4
#playsound entity.warden.sonic_boom player @a[tag=This,limit=1] ~ ~ ~ 0.35 1.3

# 4tick後（0.2秒後）に半径8（最終波紋）へ
schedule function neofunction:asset/skill/69-3 4t
