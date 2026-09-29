# 命名：フロッグリップル - 波紋1（半径3）
# 説明：中心撃の4tick後。半径3の輪状に着弾判定＋16方向へ演出パーティクル（電撃×カエル色の二色編み）
# =/function neofunction:asset/skill/69-1

execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=1.5..4] run damage @s 30 lightning_bolt by @a[tag=This,limit=1]
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=1.5..4] at @s run particle electric_spark ~ ~ ~ 0 3 0 0 100

# 衝撃波（波紋そのものの演出）
#execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle sonic_boom ~ ~0.2 ~ 0 0 0 0 1

# 輪：電撃(青白)とカエル色(緑)を交互に16方向へ配置
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~3 ~ ~0 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~2.772 ~ ~1.148 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~2.121 ~ ~2.121 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~1.148 ~ ~2.772 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~0 ~ ~3 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-1.148 ~ ~2.772 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-2.121 ~ ~2.121 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-2.772 ~ ~1.148 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-3 ~ ~0 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-2.772 ~ ~-1.148 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-2.121 ~ ~-2.121 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~-1.148 ~ ~-2.772 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~0 ~ ~-3 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~1.148 ~ ~-2.772 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~2.121 ~ ~-2.121 run particle electric_spark ~ ~0.1 ~ 0 0.2 0 0 5
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] positioned ~2.772 ~ ~-1.148 run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0 0 0 0 3

playsound entity.lightning_bolt.impact player @a[tag=This,limit=1] ~ ~ ~ 0.5 1.6
#playsound entity.warden.sonic_boom player @a[tag=This,limit=1] ~ ~ ~ 0.3 1.6

# 4tick後（0.2秒後）に半径5.5の輪へ
schedule function neofunction:asset/skill/69-2 4t
