# 命名：change
# 説明：暗殺士官のスキルセットを全習得する
# >/function neofunction:system/adv/inventory_changed/254
# >魂頭防具を装備したとき、消費して習得する
# =/function neofunction:player/job/assasin/change

function neofunction:system/scoreboard/skillreset

function neofunction:player/job/revoke
# 習得するスキルセット
execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/250
execute as @s[scores={LVL=0..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"暗殺士官【ASSASIN】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"パッシブ：スニーク時に透明・移動速度上昇を獲得する。トリガーすると透明化を3分間付与する（SP10消費）"}]}}]
execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/251
execute as @s[scores={LVL=0..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影刃生成【クリエイト・シャドウ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"暗殺士官が無から短剣を錬成するスキル（SP30消費）"}]}}]
execute as @s[scores={LVL=5..}] run advancement grant @s only neoadvancement:neoskill/252
execute as @s[scores={LVL=5..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影打ち【シャドウ・ストライク】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身を標的と認識していない敵に対し、致命的な一撃を与える（SP20消費）"}]}}]
execute as @s[scores={LVL=10..}] run advancement grant @s only neoadvancement:neoskill/253
execute as @s[scores={LVL=10..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"深蝕苦無【ディーブヴェノム】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時8m以内の対象3体に小ダメージを与え継続する蝕む毒を与えるクナイを投げる（SP5消費）"}]}}]
execute as @s[scores={LVL=20..}] run advancement grant @s only neoadvancement:neoskill/254
execute as @s[scores={LVL=20..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影縫乱舞【シャドウ・ランページ】】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時8m以内の無制限の対象に、ダメージを与える、ただし遠ければ遠いほどダメージが下がる。(SP30消費）"}]}}]
execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/255
execute as @s[scores={LVL=15..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"虚影潜伏【ヴォイド・ハイド】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身に透明化と再生能力を付与する。この効果は被弾すると解除される。（SP20消費）このスキルを取得しているとパッシブ効果を発動時再生能力を獲得できる。"}]}}]
execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/256
execute as @s[scores={LVL=15..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"幻脚【ファントム・ステップ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身に移動速度上昇と跳躍力上昇を付与する。（SP20消費）"}]}}]
execute as @s[scores={LVL=25..}] run advancement grant @s only neoadvancement:neoskill/257
execute as @s[scores={LVL=25..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影杭【シャドウ・ピラー】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身の位置に影の杭を打ち込む、影の杭はその周辺にいる敵に弱体化と鈍足エフェクトを与える(SP20消費）"}]}}]
execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/258
execute as @s[scores={LVL=15..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影潜【シャドウ・ディセント】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、周囲16mの敵対状態を解除し、1秒間敵対しなくなる。（SP10消費）"}]}}]
execute as @s[scores={LVL=40..}] run advancement grant @s only neoadvancement:neoskill/259
execute as @s[scores={LVL=40..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"終影審判【エンド・オブ・シャドウ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、周囲16mの敵に対し0.1秒ごとに敵の背後を取り、致命的な連撃をお見舞いする。影の鉄槌を下すAssasinの奥義(SP100消費）"}]}}]

# 消費
item replace entity @s armor.head with air

# スキルセット習得【インストール】完了演出
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.6 1.5
playsound minecraft:item.totem.use master @s ~ ~ ~ 0.4 0.9

particle minecraft:portal ~ ~1 ~ 0.4 0.6 0.4 0.2 120 force
particle minecraft:enchant ~ ~1 ~ 0.3 0.8 0.3 0.1 80 force
particle minecraft:end_rod ~ ~1 ~ 0.2 0.6 0.2 0.05 40 force

title @s subtitle {"text":"Jobs Have Been Installed"}
title @s title {"text":"You Are Now a ASSASIN","bold":true}


