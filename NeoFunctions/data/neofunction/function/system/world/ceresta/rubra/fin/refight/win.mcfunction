# 命名：win
# 説明：クリア後の再戦で勝った（rise から）：結末の選択は出さず、星が空へ還る光だけを見せて片付け、3 秒後に報酬ゾーンを出し直す。次の再戦は第 1 形態から
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/rise
# =/function neofunction:system/world/ceresta/rubra/fin/refight/win

# 内容
particle minecraft:flash{color:[1.0,0.9,0.8,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..200]
particle minecraft:end_rod ~ ~ ~ 5 5 5 0.3 500 force @a[distance=..200]
playsound minecraft:block.beacon.power_select hostile @a[distance=..200] ~ ~ ~ 4 0.6
playsound minecraft:ui.toast.challenge_complete record @a[distance=..200] ~ ~ ~ 1 1
execute if data storage neofunction:rubra fin{elite:1b} run tellraw @a[distance=..200] [{"text":"＊","color":"#D8DE2A","italic":true},{"text":"エリートチャレンジ：ヴォイド・ゼロを退けた","color":"#FF5555","bold":true}]
execute unless data storage neofunction:rubra fin{elite:1b} run tellraw @a[distance=..200] [{"text":"＊","color":"#D8DE2A","italic":true},{"text":"ヴォイド・ゼロを、もう一度退けた","color":"#B8D8FF","bold":true}]
tellraw @a[distance=..200] {"text":"黒い水がほどけ、赤い光が、また夜空へ昇っていった。","color":"gray","italic":true}
data modify storage neofunction:rubra fin merge value {ckpt:1,refight:0b}
function neofunction:system/adv/tick/quest/40/fin/release
schedule function neofunction:system/world/ceresta/rubra/fin/refight/win_2 60t replace
