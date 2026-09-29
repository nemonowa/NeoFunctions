# 命名：フロッグリップル（波紋雷撃）
# 説明：フロッグボルトの発展形。自分の足元を中心に、内側から外側へ3重の波紋（電撃のリング）が
# 説明：連続で広がっていく設置型スキル。ボスの円環拡散(pattern14_ring_diffuse)をプレイヤーサイドで使えるようにするスキル
# 説明：水中 or 雨天/雷雨下で発動するとボーナスが付き、最終段で範囲内の敵に確定チップダメージが入る
# >/function neofunction:entity/1_detection
# =/function neofunction:asset/skill/69

#execute unless entity @e[tag=enemy,distance=..8] run return run title @s actionbar {"text":"告：発動失敗。対象がいない！","color":"red","bold":true}

tag @s add This
scoreboard players set @s RippleBonus 0

# 水中ボーナス
execute if predicate neofunction:is_in_water run scoreboard players set @s RippleBonus 1

# 天候ボーナス（屋外で雨天/雷雨）
execute unless entity @s[predicate=!neofunction:weather_check/rainy,predicate=!neofunction:weather_check/thunder] store result score #Calc1 temp if blocks ~ ~ ~ ~ 255 ~ ~ ~ ~ masked
execute unless entity @s[predicate=!neofunction:weather_check/rainy,predicate=!neofunction:weather_check/thunder] if score #Calc1 temp matches 0 run scoreboard players set @s RippleBonus 1

# 波紋の中心点を自分の足元に設置
execute at @s run summon marker ~ ~ ~ {Tags:["FrogRippleAnchor"]}

# 中心撃（詠唱と同時）
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=..1.5] run damage @s 8 lightning_bolt by @a[tag=This,limit=1]
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] as @e[tag=enemy,distance=..1.5] at @s run particle electric_spark ~ ~ ~ 0 3 0 0 100

# 【変更：2026-09-28 26.3対応】flash パーティクルは 26.3 で色の指定が必須になったため、1.20.4 と同じ白を指定
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~0.1 ~ 0 0 0 0 1
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 0 24
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle witch ~ ~ ~ 0.4 0.1 0.4 0 6
execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle dust{color:[0.2,0.9,0.3],scale:1} ~ ~0.1 ~ 0.3 0.1 0.3 0 8
#execute at @e[tag=FrogRippleAnchor,limit=1,sort=nearest] run particle sonic_boom ~ ~0.2 ~ 0 0 0 0 1

playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 0.6 2
playsound entity.warden.sonic_boom player @s ~ ~ ~ 0.4 1.8
playsound block.amethyst_block.chime player @s ~ ~ ~ 0.6 1.4

# 4tick後（0.2秒後）に半径3の輪へ
schedule function neofunction:asset/skill/69-1 4t

scoreboard players remove @s SP 20
