# 命名：spawn
# 説明：星喰みのセレンを出す：本体（911、浮いている）と、まわりを回る 6 つの星核の欠片（見た目と当たり判定）、回すための向きの印。記録を初めに
# 実行条件：実行位置 球の広間の中心（真ん中の台の上）
# >/function neofunction:entity/skill/boss/rubra_cradle/start
# =/function neofunction:entity/skill/boss/rubra_cradle/spawn

# 内容
kill @e[tag=rubra_cradle_part]
execute positioned ~ ~1 ~ run function neofunction:asset/summon/911
summon marker ~ ~1 ~ {Tags:["rubra_cradle_part","rubra_cradle_rot","rubra_d3"]}
# 欠片は 4 つ（regrow）。すべて無くすと守りが解けて気絶（stun は残りの tick）。体力を 60 まで削ると正気に戻る
data modify storage neofunction:rubra cradle set value {state:"fight",t:0,left:4,stone:0,brk:0,stun:0,stunmsg:0b,pull:{i:0,t:0},arrow:0}
playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..48] ~ ~ ~ 2 0.6
particle minecraft:dust{color:[1.0,0.2,0.2],scale:2.0} ~ ~2 ~ 1 1.5 1 0 80 force @a[distance=..48]
execute positioned ~ ~1 ~ run function neofunction:entity/skill/boss/rubra_cradle/regrow
