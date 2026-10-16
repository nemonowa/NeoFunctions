# 命名：rise
# 説明：とどめの前（体力 30 以下）：顎がほどけ、星が昇ろうとする。戦いを止め（本体は無敵に）、近くの人に終わりの選択を出す。進み具合 446
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# >/function neofunction:entity/skill/boss/rubra_void/ctl_tick
# =/function neofunction:entity/skill/boss/rubra_void/rise

# 内容
# クリア後の再戦（セレンから）で勝ったときは、結末の選択を出さずに報酬へ
execute if data storage neofunction:rubra fin{refight:1b} run return run function neofunction:system/world/ceresta/rubra/fin/refight/win
data modify storage neofunction:rubra fin merge value {state:"rise",vul:0b}
data merge entity @s {Invulnerable:1b}
kill @e[type=marker,tag=rubra_fin_mark]
kill @e[type=ghast,tag=rubra_heart]
kill @e[type=item_display,tag=rubra_heart_v]
execute as @e[type=zombie,tag=rubra_fin_drip] run tag @s add del
kill @e[type=block_display,tag=rubra_maw_up]
kill @e[type=block_display,tag=rubra_maw_down]
particle minecraft:end_rod ~ ~ ~ 4 4 4 0.1 200 force @a[distance=..128]
playsound minecraft:block.beacon.activate hostile @a[distance=..128] ~ ~ ~ 3 0.6
scoreboard players set #temp main_story 446
tellraw @a[distance=..128] {"text":"顎がほどけ、黒い水がぼろぼろと剥がれ落ちていく。その奥で、赤い星が、空へ昇ろうともがいている。","color":"gray","italic":true}
tellraw @a[distance=..128] {"text":"――だいじょうぶ。あなたが、くるの、まってた。","color":"#FF7B7B","italic":true}
tellraw @a[distance=..128] [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「今よ、旅人さん！ 最後の一矢を！」"}]
execute as @a[distance=..128] run function neofunction:system/adv/tick/quest/40/fin/446_show
