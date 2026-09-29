# 命名：skillgrant/assassin
# 説明：暗殺士官【ASSASSIN】のレベル別スキル習得＋通知処理
# 説明：lvl/N.mcfunction からレベルアップの都度呼び出される想定。LVLスコアで自レベル分だけ発火する。
# >/function neofunction:system/scoreboard/lvl/N
# =/function neofunction:system/scoreboard/lvl/skillgrant/assassin

# Lv5：影打ち【シャドウ・ストライク】
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=5}] only neoadvancement:neoskill/252
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=5}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影打ち【シャドウ・ストライク】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身を標的と認識していない敵に対し、致命的な一撃を与える（SP20消費）"}]}}]

# Lv10：深蝕苦無【ディーブヴェノム】
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=10}] only neoadvancement:neoskill/253
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=10}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"深蝕苦無【ディーブヴェノム】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時8m以内の対象3体に小ダメージを与え継続する蝕む毒を与えるクナイを投げる（SP5消費）"}]}}]

# Lv15：虚影潜伏【ヴォイド・ハイド】／幻脚【ファントム・ステップ】／影潜【シャドウ・ディセント】
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=15}] only neoadvancement:neoskill/255
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"虚影潜伏【ヴォイド・ハイド】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身に透明化と再生能力を付与する。この効果は被弾すると解除される。（SP20消費）このスキルを取得しているとパッシブ効果を発動時再生能力を獲得できる。"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=15}] only neoadvancement:neoskill/256
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"幻脚【ファントム・ステップ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身に移動速度上昇と跳躍力上昇を付与する。（SP20消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=15}] only neoadvancement:neoskill/258
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影潜【シャドウ・ディセント】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、周囲16mの敵対状態を解除し、1秒間敵対しなくなる。（SP10消費）"}]}}]

# Lv20：影縫乱舞【シャドウ・ランページ】
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=20}] only neoadvancement:neoskill/254
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=20}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影縫乱舞【シャドウ・ランページ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時8m以内の無制限の対象に、ダメージを与える、ただし遠ければ遠いほどダメージが下がる。(SP30消費）"}]}}]

# Lv25：影杭【シャドウ・ピラー】
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=25}] only neoadvancement:neoskill/257
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=25}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"影杭【シャドウ・ピラー】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、自身の位置に影の杭を打ち込む、影の杭はその周辺にいる敵に弱体化と鈍足エフェクトを与える(SP20消費）"}]}}]

# Lv40：終影審判【エンド・オブ・シャドウ】
advancement grant @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=40}] only neoadvancement:neoskill/259
tellraw @s[advancements={neoadvancement:neoskill/250=true},scores={LVL=40}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"終影審判【エンド・オブ・シャドウ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"発動時、周囲16mの敵に対し0.1秒ごとに敵の背後を取り、致命的な連撃をお見舞いする。影の鉄槌を下すAssasinの奥義(SP100消費）"}]}}]
