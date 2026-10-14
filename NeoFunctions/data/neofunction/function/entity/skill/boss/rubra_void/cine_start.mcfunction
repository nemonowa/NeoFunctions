# 命名：cine_start
# 説明：【追加：2026-10-09 ルブラ編】とどめのあとの空の演出を始める：本体と顎を消し、見えないエンダードラゴンを出してすぐ倒す（死ぬときの光の筋と爆発を、星が弾ける／沈む光として使う）
# 説明：セレスタ次元はジ・エンドではないので出口のポータルはできない。落とす経験値の玉は演出のあいだ毎 tick 消す（cine_tick）。11 秒後に結末へ
# 説明：ドラゴンには名前を付けない（名前付きだと、死ぬ演出が終わったときにサーバーの tick が止まった）。最初から check を付けて共通の出現処理を通さない
# 実行条件：実行者・実行位置 本体
# >/function neofunction:system/adv/tick/quest/40/fin/choice_final
# =/function neofunction:entity/skill/boss/rubra_void/cine_start

# 内容
data modify storage neofunction:rubra fin.state set value "cine"
kill @e[type=block_display,tag=rubra_void_black]
kill @e[type=block_display,tag=rubra_maw_up]
kill @e[type=block_display,tag=rubra_maw_down]
summon ender_dragon ~ ~-2 ~ {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["check","rubra_fin","rubra_fin_fx","except"],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
kill @e[type=ender_dragon,tag=rubra_fin_fx]
kill @s
effect give @a[distance=..128] minecraft:resistance 15 4 true
effect give @a[distance=..128] minecraft:slow_falling 15 0 true
particle minecraft:flash{color:[1.0,0.9,0.8,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
playsound minecraft:block.beacon.power_select hostile @a[distance=..200] ~ ~ ~ 4 0.6
execute if data storage neofunction:rubra fin.cine{e:"b"} run title @a[distance=..200] title {"text":"黒い渦が、星を呑んで沈んでいく","color":"#8A7FD0","bold":true}
execute unless data storage neofunction:rubra fin.cine{e:"b"} run title @a[distance=..200] title {"text":"星が、空へ還っていく","color":"#FF9C7B","bold":true}
title @a[distance=..200] subtitle ""
