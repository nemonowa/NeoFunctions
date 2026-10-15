# 命名：tick
# 説明：ヴォイド・ゼロの毎 tick：落ちた人を拾う、いなくなったときの片付け、体力のスコア（HP）で形態を進める、形態ごとの処理、発狂、黒い水、弾、黒星、星読みの結界、零点崩壊、衝撃波、技
# 実行条件：実行者・実行位置 本体（ghast、タグ rubra_void）
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/rubra_void/tick

# 内容
execute unless data storage neofunction:rubra fin{state:"fight"} unless data storage neofunction:rubra fin{state:"ult"} run return 0
execute unless entity @a[distance=..160,gamemode=!spectator] run return run function neofunction:entity/skill/boss/rubra_void/despawn
# 舞台のまわりに落ちた黒いカーペット（黒い水）のアイテムを消す
kill @e[type=item,x=860,y=150,z=3220,dx=125,dy=70,dz=125,nbt={Item:{id:"minecraft:black_carpet"}}]
# 再戦：共通の出現処理が済んでから、到達した形態の体力に合わせる
execute if data storage neofunction:rubra fin{ckp:1b} if entity @s[tag=mob] run function neofunction:entity/skill/boss/rubra_void/spawn_ckpt
# 舞台から落ちた人（y150〜191）を拾い上げる
execute positioned 856 150 3216 as @a[dx=130,dy=41,dz=130,gamemode=!spectator] run function neofunction:entity/skill/boss/rubra_void/catch
# エリートチャレンジ：黒い滴りを強くし、6 秒ごとに黒い槍で狙い撃つ（elite_tick）
execute if data storage neofunction:rubra fin{elite:1b} run function neofunction:entity/skill/boss/rubra_void/elite_tick
# 黒い水・黒い弾・黒星（発狂中も）
function neofunction:entity/skill/boss/rubra_void/ink_tick
execute as @e[type=item_display,tag=rubra_blt] at @s run function neofunction:entity/skill/boss/rubra_void/blt_tick
# 必殺技の黒い槍（自機狙いの速い弾）
execute as @e[type=item_display,tag=rubra_ublt] at @s run function neofunction:entity/skill/boss/rubra_void/ublt_tick
function neofunction:entity/skill/boss/rubra_void/star_tick
# 発狂中は必殺技だけ
execute if data storage neofunction:rubra fin{state:"ult"} run return run function neofunction:entity/skill/boss/rubra_void/ult_tick
# 体力のスコアで形態を進める（1000〜701 第 1、700〜301 第 2、300〜 第 3）
execute if data storage neofunction:rubra fin{form:1} if score @s HP matches ..700 run return run function neofunction:entity/skill/boss/rubra_void/form2_start
execute if data storage neofunction:rubra fin{form:2} if score @s HP matches ..300 run return run function neofunction:entity/skill/boss/rubra_void/form3_start
# 見た目（0.5 秒ごと）
execute store result score #rv_lk temp run data get storage neofunction:rubra fin.lk
scoreboard players add #rv_lk temp 1
execute if score #rv_lk temp matches 10.. run scoreboard players set #rv_lk temp 0
execute store result storage neofunction:rubra fin.lk int 1 run scoreboard players get #rv_lk temp
execute if score #rv_lk temp matches 0 run function neofunction:entity/skill/boss/rubra_void/look
# 形態ごと
execute if data storage neofunction:rubra fin{form:1} run function neofunction:entity/skill/boss/rubra_void/form1
execute if data storage neofunction:rubra fin{form:2} run function neofunction:entity/skill/boss/rubra_void/form2
execute if data storage neofunction:rubra fin{form:3} run function neofunction:entity/skill/boss/rubra_void/form3
execute unless data storage neofunction:rubra fin{state:"fight"} run return 0
# 星読みの結界（セレンを守り石だけで救い、セレンの信頼が 1 以上のとき、30 秒ごと）
execute store result score #rv_bt temp run data get storage neofunction:rubra fin.bt
scoreboard players add #rv_bt temp 1
execute if score #rv_bt temp matches 600.. run scoreboard players set #rv_bt temp 0
execute store result storage neofunction:rubra fin.bt int 1 run scoreboard players get #rv_bt temp
execute if score #rv_bt temp matches 300 if data storage neofunction:rubra choice{selen_way:"stone"} run function neofunction:entity/skill/boss/rubra_void/barrier
# 零点崩壊・環状の衝撃波の最中
execute unless data storage neofunction:rubra fin{pull:0} run function neofunction:entity/skill/boss/rubra_void/pull_tick
execute unless data storage neofunction:rubra fin{rw:0} run function neofunction:entity/skill/boss/rubra_void/ring_tick
# 技（2.5 秒ごと）
execute store result score #rv_at temp run data get storage neofunction:rubra fin.at
scoreboard players add #rv_at temp 1
# エリートは技の間隔を 2.5 秒 → 1.7 秒に
execute if data storage neofunction:rubra fin{elite:1b} if score #rv_at temp matches 34.. run scoreboard players set #rv_at temp 0
execute if score #rv_at temp matches 50.. run scoreboard players set #rv_at temp 0
execute store result storage neofunction:rubra fin.at int 1 run scoreboard players get #rv_at temp
execute if score #rv_at temp matches 0 if data storage neofunction:rubra fin{c:0,pull:0,rw:0} run function neofunction:entity/skill/boss/rubra_void/attack
execute unless data storage neofunction:rubra fin{c:0} run function neofunction:entity/skill/boss/rubra_void/act
