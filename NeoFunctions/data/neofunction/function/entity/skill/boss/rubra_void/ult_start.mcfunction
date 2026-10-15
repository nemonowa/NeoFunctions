# 命名：ult_start
# 説明：発狂（体力 60）：顎が裂け、虚の海が最後の力で暴れだす。30 マス上へ昇り、黒星を降らせる（ult_tick、u を数える）。この間は攻撃が通らない。
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/ult_start

# 内容
data modify storage neofunction:rubra fin merge value {state:"ult",u:0,a:0,c:0,pull:0,rw:0,vul:0b,rp:0}
effect give @s minecraft:resistance infinite 4 true
kill @e[type=marker,tag=rubra_fin_mark]
kill @e[type=item_display,tag=rubra_blt]
execute as @e[type=zombie,tag=rubra_fin_drip] run tag @s add del
kill @e[type=block_display,tag=rubra_maw_up]
kill @e[type=block_display,tag=rubra_maw_down]
effect give @a[distance=..160] minecraft:darkness 4 0 true
particle minecraft:flash{color:[0.6,0.1,0.3,1.0]} ~ ~ ~ 0 0 0 0 3 force @a[distance=..200]
particle minecraft:sculk_soul ~ ~ ~ 10 10 10 0.1 600 force @a[distance=..200]
playsound minecraft:entity.wither.spawn hostile @a[distance=..200] ~ ~ ~ 4 0.5
playsound minecraft:entity.warden.roar hostile @a[distance=..200] ~ ~ ~ 4 0.4
playsound minecraft:block.end_portal.spawn hostile @a[distance=..200] ~ ~ ~ 4 0.5
tellraw @a[distance=..160] {"text":"顎が裂けた。けれど黒い水は離れない。星を抱えたまま、夜空の高みへ昇っていく――","color":"#B19CD9","italic":true}
tellraw @a[distance=..160] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「上……！ 何か、とんでもないのが来る！ 旅人さん、黒い星の落ちる影から逃げて！」"}]
