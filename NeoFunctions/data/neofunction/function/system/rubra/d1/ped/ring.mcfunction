# 命名：ring
# 説明：【追加：2026-10-08 ルブラ編】星の台の間の鐘を鳴らしたとき：台の向きが壁の文字のとおり（北→赤、西→青、南→金＝北 2・西 3・南 2）なら、扉を赤→青→金の順に開ける
# 説明：違っていたら落石の音がして、置いた台の向きが全部 1 に戻る
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d1/ped/ring

# 内容
playsound minecraft:block.bell.use block @a[distance=..32] ~ ~ ~ 2 0.7
execute if data storage neofunction:rubra d1{solved:1b} run return run tellraw @s {"text":"鐘の音が、縦穴の底まで響いていく。光の道は、もうつながっている。","color":"gray","italic":true}
execute if data storage neofunction:rubra d1{opening:1b} run return 0
execute if data storage neofunction:rubra d1.ped{n:2,w:3,s:2} run return run function neofunction:system/rubra/d1/ped/right
# 違う：落石の音、向きを 1 に戻す
execute in neodimension:ceresta_festa run playsound minecraft:block.gravel.break block @a[distance=..32] 832 6 3268 2 0.5
execute in neodimension:ceresta_festa run particle minecraft:block{block_state:"minecraft:gravel"} 832.5 8 3268.5 3 4 3 0 60 normal
execute unless data storage neofunction:rubra d1.ped{n:0} run data modify storage neofunction:rubra d1.ped.n set value 1
execute unless data storage neofunction:rubra d1.ped{w:0} run data modify storage neofunction:rubra d1.ped.w set value 1
execute unless data storage neofunction:rubra d1.ped{s:0} run data modify storage neofunction:rubra d1.ped.s set value 1
tellraw @a[distance=..32] {"text":"縦穴の奥で岩がきしみ、もとに戻った。台の光が、最初の向きに戻っていく。","color":"gray","italic":true}
tellraw @a[distance=..32] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「違ったみたい……。白い層の迷い路の奥に刻まれてた言葉、思い出してみましょう。光の色と、星の色を合わせるんだと思います」"}]
