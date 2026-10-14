# 命名：shadow_light
# 説明：【追加：2026-10-09 ルブラ編】影 1 体の毎秒（闇の間・結晶の封・球の広間）
# 説明：【変更：2026-10-14】影はいつでも斬れる（前は光の外で無敵・透明で、わかりにくかった）。守り石の光（オフハンドに持った人＝タグ rubra_stonelit から 5 マス）の中では動きが鈍り、青く光る
# 実行条件：実行者・実行位置 影（vex、タグ rubra_shadow）
# >/function neofunction:system/adv/tick/dungeon/rubra3/dark
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# >/function neofunction:system/rubra/d3/xtal/loop
# =/function neofunction:system/rubra/d3/shadow_light

# 内容
data merge entity @s {Invulnerable:0b,Glowing:1b}
effect clear @s minecraft:invisibility
execute if entity @a[tag=rubra_stonelit,distance=..5] run effect give @s minecraft:slowness 2 3 true
execute if entity @a[tag=rubra_stonelit,distance=..5] run particle minecraft:dust{color:[0.35,0.6,1.0],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0 4 normal
particle minecraft:smoke ~ ~0.5 ~ 0.2 0.3 0.2 0.01 4 normal
