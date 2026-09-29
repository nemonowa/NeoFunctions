# 命名：change
# 説明：共鳴士官のスキルセットを全習得する
# 説明：レベルキャップは習得時ではなく発動時に「このスキルはLv99になるまで発動できない！」
# >/function neofunction:system/adv/inventory_changed/249
# >魂頭防具を装備したとき、消費して習得する
# =/function neofunction:player/job/aria/change

function neofunction:player/job/revoke

function neofunction:system/scoreboard/skillreset

# 習得するスキルセット
execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/210
execute as @s[scores={LVL=0..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴騎士【ARIA】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると自身にソウルホープを3分間付与する（SP10消費）"}]}}]
execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/211
execute as @s[scores={LVL=0..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴錬成【レゾナンス・クリエイト】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"共鳴騎士が無から杖を錬成するスキル（SP30消費）"}]}}]
execute as @s[scores={LVL=5..}] run advancement grant @s only neoadvancement:neoskill/214
execute as @s[scores={LVL=5..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴刻印【レゾナンス・シギル】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"殴った相手に共鳴刻印を付与する。トリガーすると周囲3m以内の敵に共鳴刻印を付与する。30秒間のウィザーを付与する。（SP10消費）"}]}}]
execute as @s[scores={LVL=10..}] run advancement grant @s only neoadvancement:neoskill/212
execute as @s[scores={LVL=10..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴縛鎖【レゾナンス・チェイン】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲16m以内の最も近い敵を拘束し大ダメージを与える。範囲内の刻印持ちの敵には追加ダメージを与える。(SP20消費）"}]}}]
execute as @s[scores={LVL=10..}] run advancement grant @s only neoadvancement:neoskill/213
execute as @s[scores={LVL=10..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴跳躍【レゾナンス・リープ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲16m以内の最も遠い共鳴刻印持ちにテレポートし、大ダメージを与える。範囲内の刻印持ちの敵には追加ダメージを与える。（SP20消費）"}]}}]
execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/215
execute as @s[scores={LVL=15..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴旋律【レゾナンス・メロディ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲16m以内共鳴刻印持ちの数に応じて、回復する。刻印持ちが多ければ多いほど回復効果が多くなる。（SP20消費）"}]}}]
execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/216
execute as @s[scores={LVL=15..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴回帰【レゾナンス・リカバリー】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると自身に共鳴回帰を3分間付与する。共鳴回帰は周囲16mにいる刻印持ちの数に応じてSPの追加の回復効果を得る。（SP20消費）"}]}}]
execute as @s[scores={LVL=20..}] run advancement grant @s only neoadvancement:neoskill/218
execute as @s[scores={LVL=20..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴短律【レゾナンス・カデンツァ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲8m以内のプレイヤーに共鳴短律を1分間付与する。共鳴短律は効果がある間スキルのCT減少速度が倍になる。（SP30消費）"}]}}]
execute as @s[scores={LVL=25..}] run advancement grant @s only neoadvancement:neoskill/217
execute as @s[scores={LVL=25..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴回帰【レゾナンス・リカージョン】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると自身の装備の耐久値を全回復する。（SP100消費）"}]}}]
execute as @s[scores={LVL=40..}] run advancement grant @s only neoadvancement:neoskill/211
execute as @s[scores={LVL=40..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴領域【レゾナンス・サンクチュアリ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると1分間の共鳴領域を生成する。共鳴領域は範囲内のあらゆる敵に1秒ごとに鈍足とウィザー、共鳴刻印を与え、範囲内のプレイヤーには共鳴回帰、共鳴短律を付与する。"}]}}]

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
title @s title {"text":"You Are Now a ARIA","bold":true}


