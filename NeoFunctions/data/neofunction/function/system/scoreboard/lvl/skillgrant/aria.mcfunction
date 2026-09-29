# 命名：skillgrant/aria
# 説明：共鳴騎士【ARIA】のレベル別スキル習得＋通知処理
# 説明：lvl/N.mcfunction からレベルアップの都度呼び出される想定。LVLスコアで自レベル分だけ発火する。
# >/function neofunction:system/scoreboard/lvl/N
# =/function neofunction:system/scoreboard/lvl/skillgrant/aria

# Lv5：共鳴錬成【レゾナンス・クリエイト】／共鳴刻印【レゾナンス・シギル】
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=5}] only neoadvancement:neoskill/211
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=5}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴錬成【レゾナンス・クリエイト】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"共鳴騎士が無から杖を錬成するスキル（SP30消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=5}] only neoadvancement:neoskill/214
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=5}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴刻印【レゾナンス・シギル】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"殴った相手に共鳴刻印を付与する。トリガーすると周囲3m以内の敵に共鳴刻印を付与する。30秒間のウィザーを付与する。（SP10消費）"}]}}]

# Lv10：共鳴縛鎖【レゾナンス・チェイン】／共鳴跳躍【レゾナンス・リープ】
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=10}] only neoadvancement:neoskill/212
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=10}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴縛鎖【レゾナンス・チェイン】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲16m以内の最も近い敵を拘束し大ダメージを与える。範囲内の刻印持ちの敵には追加ダメージを与える。(SP20消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=10}] only neoadvancement:neoskill/213
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=10}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴跳躍【レゾナンス・リープ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲16m以内の最も遠い共鳴刻印持ちにテレポートし、大ダメージを与える。範囲内の刻印持ちの敵には追加ダメージを与える。（SP20消費）"}]}}]

# Lv15：共鳴旋律【レゾナンス・メロディ】／共鳴回帰【レゾナンス・リカバリー】
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=15}] only neoadvancement:neoskill/215
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴旋律【レゾナンス・メロディ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲16m以内共鳴刻印持ちの数に応じて、回復する。刻印持ちが多ければ多いほど回復効果が多くなる。（SP20消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=15}] only neoadvancement:neoskill/216
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴回帰【レゾナンス・リカバリー】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると自身に共鳴回帰を3分間付与する。共鳴回帰は周囲16mにいる刻印持ちの数に応じてSPの追加の回復効果を得る。（SP20消費）"}]}}]

# Lv20：共鳴短律【レゾナンス・カデンツァ】
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=20}] only neoadvancement:neoskill/217
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=20}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴短律【レゾナンス・カデンツァ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると周囲8m以内のプレイヤーに共鳴短律を1分間付与する。共鳴短律は効果がある間スキルのCT減少速度が倍になる。（SP30消費）"}]}}]

# Lv25：共鳴修復【レゾナンス・リカージョン】
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=25}] only neoadvancement:neoskill/218
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=25}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴修復【レゾナンス・リカージョン】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると自身の装備の耐久値を全回復する。（SP100消費）"}]}}]

# Lv40：共鳴領域【レゾナンス・サンクチュアリ】
advancement grant @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=40}] only neoadvancement:neoskill/219
tellraw @s[advancements={neoadvancement:neoskill/210=true},scores={LVL=40}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"共鳴領域【レゾナンス・サンクチュアリ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"トリガーすると1分間の共鳴領域を生成する。共鳴領域は範囲内のあらゆる敵に1秒ごとに鈍足とウィザー、共鳴刻印を与え、範囲内のプレイヤーには共鳴回帰、共鳴短律を付与する。"}]}}]
