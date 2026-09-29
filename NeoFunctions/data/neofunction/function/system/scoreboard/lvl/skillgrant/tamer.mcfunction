# 命名：skillgrant/tamer
# 説明：使役士官【TAMER】のレベル別スキル習得＋通知処理
# 説明：lvl/N.mcfunction からレベルアップの都度呼び出される想定。LVLスコアで自レベル分だけ発火する。
# >/function neofunction:system/scoreboard/lvl/N
# =/function neofunction:system/scoreboard/lvl/skillgrant/tamer

# Lv5：召狼【サモン・ウルフ】
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=5}] only neoadvancement:neoskill/232
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=5}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"召狼【サモン・ウルフ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"テイム済みの狼を召喚。飼い主に追従し、近くの敵へ自動で攻撃する接近戦特化型（SP20消費）"}]}}]

# Lv15：召雪像【サモン・スノーゴーレム】／召猫【サモン・ヒーリングキャット】
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=15}] only neoadvancement:neoskill/233
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"召雪像【サモン・スノーゴーレム】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"スノーゴーレムを召喚。射程内の敵へ自動で雪玉を投げ、遠距離から継続的に牽制する（SP20消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=15}] only neoadvancement:neoskill/235
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"召猫【サモン・ヒーリングキャット】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"テイム済みの猫を召喚。1秒おきに回復スプラッシュポーションを自動生成し、周囲を継続的に回復させる。召喚から15秒で消滅（SP20消費）"}]}}]

# Lv20：獣化【フェラル・インスティンクト】／鼓舞【クイック・エンハンス】
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=20}] only neoadvancement:neoskill/236
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=20}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"獣化【フェラル・インスティンクト】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"周囲32m以内の使い魔の数(最大5体)に応じて移動速度上昇と被ダメージ軽減が段階的に上昇する自己強化（15秒・SP20消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=20}] only neoadvancement:neoskill/237
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=20}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"鼓舞【クイック・エンハンス】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"8m以内のプレイヤーと16m以内の使い魔を強化する（15秒・SP30消費）"}]}}]

# Lv30：召鉄像【サモン・アイアンゴーレム】／地獄門【ゲヘナ・ゲート】
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=30}] only neoadvancement:neoskill/234
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=30}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"召鉄像【サモン・アイアンゴーレム】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"アイアンゴーレムを召喚。周囲の敵を殴り飛ばすノックバック攻撃で複数の敵を同時に妨害する（SP30消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=30}] only neoadvancement:neoskill/238
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=30}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"地獄門【ゲヘナ・ゲート】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"使い魔を基本8体まとめて召喚し、敵を囲んで攪乱する。個体は召狼・召雪像・召鉄像と同等の性能で30秒後に消滅（SP50消費）"}]}}]

# Lv40：百獣共鳴【ビースト・ロード】
advancement grant @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=40}] only neoadvancement:neoskill/239
tellraw @s[advancements={neoadvancement:neoskill/230=true},scores={LVL=40}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"百獣共鳴【ビースト・ロード】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"召喚済みの使い魔全体を一斉強化する切り札。効果時間20秒終了で強化中の使い魔は消滅（SP100消費）"}]}}]
