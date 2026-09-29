# 命名：skillgrant/doctor
# 説明：医工士官【DOCTOR】のレベル別スキル習得＋通知処理
# 説明：lvl/N.mcfunction からレベルアップの都度呼び出される想定。LVLスコアで自レベル分だけ発火する。
# >/function neofunction:system/scoreboard/lvl/N
# =/function neofunction:system/scoreboard/lvl/skillgrant/doctor

# Lv5：劇薬強襲【トキシックレイド】
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=5}] only neoadvancement:neoskill/242
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=5}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"劇薬強襲【トキシックレイド】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"命中させた敵に劇薬入りの猛毒を撃ち込み、じわじわとウィザー(衰弱)で蝕む単体攻撃。（SP4消費）"}]}}]

# Lv10：爆裂フラスコ【エクスプロードフラスコ】／散布性毒霧【ヴェノムミスト】
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=10}] only neoadvancement:neoskill/243
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=10}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"爆裂フラスコ【エクスプロードフラスコ】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"調合したフラスコを敵に投げつけ、着弾と同時に爆発させて確定ダメージを叩き込む遠隔攻撃。距離を取りながら一撃の火力を稼げる。（SP15消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=10}] only neoadvancement:neoskill/244
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=10}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"散布性毒霧【ヴェノムミスト】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"命中した敵を中心に紫の毒霧を撒き散らし、周囲の敵をまとめて巻き込む範囲攻撃。毒とダメージで複数の敵を同時に弱らせる。（SP5消費）"}]}}]

# Lv15：治癒のポーション【ヒーリングエリクサー】
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=15}] only neoadvancement:neoskill/245
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=15}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"治癒のポーション【ヒーリングエリクサー】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"味方に清らかな癒しのポーションを浴びせ、傷を癒す回復スキル。仲間を戦線に留まらせるドクターの基本動作。（SP15消費）"}]}}]

# Lv20：アドレナリン注射【コンバットスティム】／秘薬散布【エリクサーバースト】／毒消しの処方【アンチドート】
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=20}] only neoadvancement:neoskill/246
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=20}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"アドレナリン注射【コンバットスティム】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"自らに強壮剤を打ち込み、力・速さ・耐性を一時的に引き上げる自己強化スキル。前線に出て立ち回る際の下地になる。（SP25消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=20}] only neoadvancement:neoskill/247
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=20}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"秘薬散布【エリクサーバースト】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"味方一人に秘薬の加護を纏わせ、一定時間の間状態異常を寄せ付けない耐性のオーラを付与する支援スキル。（SP24消費）"}]}}]
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=20}] only neoadvancement:neoskill/248
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=20}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"毒消しの処方【アンチドート】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"対象にかかっている代表的な状態異常を即座に取り除く解毒スキルで軽いコストで使える応急処置。（SP10消費）"}]}}]

# Lv40：万能秘薬・パラケルススの遺産【アルカナム・オプス】
advancement grant @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=40}] only neoadvancement:neoskill/249
tellraw @s[advancements={neoadvancement:neoskill/240=true},scores={LVL=40}] [{"text":"スキル獲得:","color":"dark_aqua","bold":true,"italic":false},{"text":"万能秘薬・パラケルススの遺産【アルカナム・オプス】","color":"white","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"黄金の霧を身にまとい、範囲内の味方には回復と全能力強化を、敵には毒・衰弱・防御低下を同時に叩き込む、癒しと攻撃を極めたドクターの奥義。（SP60消費）"}]}}]
