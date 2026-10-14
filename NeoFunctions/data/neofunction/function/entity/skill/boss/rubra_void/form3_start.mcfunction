# 命名：form3_start
# 説明：【追加：2026-10-13 ルブラ編】第 3 形態へ（体力 300 以下）：虚の海が星をもう一度呑もうと、巨大な顎になる。黒い心臓が 4 つ（フェーズ 1）。【変更：2026-10-14】心臓を全部砕くと顎が 15 秒開く。開いているあいだに 200 以下 → 心臓 6、100 以下 → 心臓 8、60 以下 → 発狂。削りきれなければ同じ数の心臓がまた浮かぶ。心臓を砕いても体力は削れない。【変更：2026-10-13】入ってすぐ舞台が崩れる（stage_break、遮る柱・小島がなくなる）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/form3_start

# 内容
data modify storage neofunction:rubra fin merge value {form:3,ckpt:3,a:0,c:0,pull:0,rw:0,at:0,drag:0,open:0,ht:0,pn:0,hp3:1,vul:0b,sc:1,ot:0}
kill @e[type=marker,tag=rubra_fin_mark]
kill @e[tag=rubra_fin_shard]
function neofunction:entity/skill/boss/rubra_void/pillars_off
# 【追加：2026-10-15】縁（真ん中から 22〜30 マス）に黒いカーペット（黒い水）を敷く
function neofunction:entity/skill/boss/rubra_void/rim_on
tp @s 921.5 214 3282.5
data modify entity @s CustomName set value {"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true,"italic":false}
effect give @s minecraft:resistance infinite 4 true
kill @e[type=block_display,tag=rubra_void_part]
execute positioned 921.5 214 3282.5 run function neofunction:entity/skill/boss/rubra_void/look_maw
execute positioned 921.5 214 3282.5 run function neofunction:entity/skill/boss/rubra_void/hearts4
particle minecraft:sculk_soul ~ ~ ~ 8 6 8 0.05 300 force @a[distance=..160]
playsound minecraft:entity.warden.roar hostile @a[distance=..160] ~ ~ ~ 4 0.5
title @a[distance=..160] subtitle {"text":"第 3 形態　星をもう一度呑もうとする、虚の海の顎","color":"gray"}
title @a[distance=..160] title {"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true}
tellraw @a[distance=..160] {"text":"黒い水が、上と下から星を挟みこむ。巨大な顎のまわりで、黒い心臓が脈打ちはじめた――","color":"gray","italic":true}
tellraw @a[distance=..160] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「あの黒い心臓が、顎を動かしてる！ 星還しの矢なら、一矢で砕けるはず！」"}]
