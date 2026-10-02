# 命名：2_scoreboard
# 説明：scoreboard作成
# 説明：エンティティによって個別に保有・変動する数値を保存するための箱
# 説明：命名制限と命名法則がクソ
# >/function neofunction:system/setting
# =/function neofunction:system/setting/2_scoreboard


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/2_scoreboard"}

# スコアボード
scoreboard objectives add world dummy "§2§k|§e§k|§a§k|§b§k|§r§f§l§2§lThe§e§lWorld§a§lof§b§lWonders§f§l§r§2§k|§a§k|§2§k|§a§k|§r"

# 基礎ステータス
scoreboard objectives add EXP dummy "【経験値】Experience"
scoreboard objectives add LVL dummy "【進行率】Levelレベル"
scoreboard objectives add HP dummy "【耐久力】HP表示用"
scoreboard objectives add SP dummy "【冀求力】Soul"
scoreboard objectives add CT dummy "【クールタイム】CoolTime（スキルなどの再使用に影響）"
scoreboard objectives add DEF dummy "【防御力】HP表示用（金ハート）"
scoreboard objectives add MiningSpeed dummy "【採掘力】未知の火器の採掘速度"
scoreboard objectives add HasteDuration dummy "採掘力上昇の効果時間"
scoreboard objectives add HasteLevel dummy "採掘力上昇のレベル"
#scoreboard objectives add SPD dummy "【機動力】Speed"
#scoreboard objectives add ATK dummy "【攻撃力】Attack"
#scoreboard objectives add INT dummy "【理解力】Intelligence（特殊レシピやアクセサリスロットに影響）"
#scoreboard objectives add RES dummy "【抵抗力】Resist（特殊デハフやノックバックに影響）"
#scoreboard objectives add LUK dummy "【運命力】Lucky（レアドロップやレアルートなどに影響）"
#scoreboard objectives add CRT dummy "【会心力】Critical（クリティカルや奇襲攻撃に影響）"

scoreboard objectives add SPmax dummy "【冀求力最大値】Soul"
scoreboard objectives add HPmax dummy "【耐久力最大値】"
scoreboard objectives add depth dummy "【経験値】プレイヤー毎の進捗達成率"
scoreboard objectives add temp dummy "一時記録用"
scoreboard objectives add ShardC dummy "シャードを取り出す数"

# LevelSync(レベル同期)
scoreboard objectives add lv_max dummy "LevelSync LvMax"
scoreboard objectives add ls_gap dummy "LevelSync 差分"
scoreboard objectives add ls_rate dummy "LevelSync 同期率(%)"
scoreboard objectives add ls_own dummy "LevelSync 計算用(own)"
scoreboard objectives add ls_max dummy "LevelSync 計算用(max)"
scoreboard objectives add ls_syn dummy "LevelSync 計算用(synced)"
scoreboard objectives add ls_const dummy "LevelSync 定数"

# 冀求力
scoreboard objectives add SP1p dummy "【冀求力】1%"
scoreboard objectives add SP5p dummy "【冀求力】5%"
scoreboard objectives add SP10p dummy "【冀求力】10%"
scoreboard objectives add SP20p dummy "【冀求力】20%"
scoreboard objectives add SP50p dummy "【冀求力】50%"
scoreboard objectives add SP150p dummy "【冀求力】150%"
scoreboard objectives add SP200p dummy "【冀求力】200%"

# バニラプリセット
scoreboard objectives add food food "満腹度"
scoreboard objectives add health health "ヒットポイント"
scoreboard objectives add deathCount deathCount "死亡回数"
scoreboard objectives add death deathCount "死亡検知"
scoreboard objectives add totalKillCount totalKillCount "討伐回数"
#scoreboard objectives add armor armor "防具値"

# プロローグタイマー　いつかしたの汎用タイマーに統合したい（切実）その時はgeneralタイマーの名前も治したいな（願望）
scoreboard objectives add prog dummy "プロローグフラグスコア"
scoreboard objectives add prog_timer dummy "プロローグタイマー"
scoreboard objectives add ceres dummy "セレスタフラグスコア"
scoreboard objectives add ceres_timer dummy "セレスタイマー"

# 音楽関連
scoreboard objectives add MusicTimer dummy "音楽再生用"
scoreboard objectives add MusicStop dummy "音楽のフェードアウト用"

# 汎用タイマー
scoreboard objectives add generaltimerflag dummy "汎用タイマー起動フラグ"
scoreboard objectives add generaltimer dummy "汎用タイマー"
# 汎用タイマー
scoreboard objectives add no_dmg_timer dummy "ノーダメージタイマー"
# 加護用タイマー
scoreboard objectives add venedictiontimerflag dummy "加護用タイマー起動フラグ"
scoreboard objectives add venedictiontimer dummy "加護タイマー"

# いろいろ
scoreboard objectives add name dummy "異名"
scoreboard objectives add roll dummy "階級"
scoreboard objectives add job dummy "職業"
scoreboard objectives add karman dummy "カルマ"
scoreboard objectives add infection dummy "感染レベル"
scoreboard objectives add doom dummy "【メメント・モリ】"
scoreboard objectives add heal dummy "回復処理"
scoreboard objectives add logAnchor dummy "アンカー総発見数"
scoreboard objectives add logEntity dummy "エンティティ総発見数"
scoreboard objectives add logItem dummy "アイテム総発見数"
scoreboard objectives add enemyKillCount dummy "エネミーキルカウント回数"

# クエスト(スコアボードはエンティティ、特にプレイヤーごとに頻繁に変化する値をとるものだから不必要に増やさないで
scoreboard objectives add quest dummy "クエストカウンター"
scoreboard objectives add questsuccesscount dummy "クエスト達成累計数"
# 小麦を壊した回数(クエスト用)
scoreboard objectives add break_wheat minecraft.mined:minecraft.wheat
#いったんキープ、後必要なさそうなら、削除する
scoreboard objectives add mainquest dummy "メインクエストカウンター"
#ワールド固有のメインクエスト進行度を保存する。
scoreboard objectives add main_story dummy "1章メインクエスト進行状況"
scoreboard objectives add flag dummy "いろいろな判定用"

# minecraft.custom
scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt "与ダメージ"
scoreboard objectives add DamageAbsorbed minecraft.custom:minecraft.damage_absorbed "被ダメージ"
scoreboard objectives add DamageResisted minecraft.custom:minecraft.damage_resisted "軽減したダメージ"

scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time "スニークタイム"
scoreboard objectives add Cstick minecraft.used:minecraft.carrot_on_a_stick "【右クリック】ニンジンの杖"
scoreboard objectives add Mstick minecraft.used:warped_fungus_on_a_stick "【右クリック】キノコの杖"
scoreboard objectives add horseMove minecraft.custom:horse_one_cm "馬での移動"

scoreboard objectives add continue minecraft.custom:minecraft.leave_game "コンテニュー"
scoreboard objectives add survival minecraft.custom:minecraft.play_time "プレイ時間"
scoreboard objectives add dush minecraft.custom:minecraft.sprint_one_cm "ダッシュ距離"
scoreboard objectives add jump minecraft.custom:minecraft.jump "ジャンプ回数"
scoreboard objectives add traded_with_villager minecraft.custom:minecraft.traded_with_villager "交易回数"
# minecraft.used
# minecraft.mined
scoreboard objectives add minedSpawner minecraft.mined:minecraft.spawner "スポナー破壊総数"

# 【追加：2026-10-01】神器のエンチャント（neofunction:asset/enchantment。神槍「天墜」・星葬弓「終焉」・零点鎚「崩壊」・星核鎧「超新星」）に使っている
#   neo.nk_id＝発動者と、爆心・演出の表示を結び付ける番号（発動者は一度付いたら同じ番号のまま）
#   neo.nk_st＝発動者の状態（1〜60＝超新星のため、1000＝使用中。2 発目を止め、超新星ではダメージ無効の条件にも使う）
#   爆心ごとの値（経過 tick・種類・衝撃波の半径・高さ・速さ）は爆心のマーカーの data に、計算用の値は temp の #nk_* に置いている
# 【変更：2026-10-02】最初は 8 つ作っていたのを 2 つに減らした（スコアボードはなるべく増やさない）
# 既存のワールドはここを通らないため、asset/enchantment/core/init が使うときにも同じものを作る
scoreboard objectives add neo.nk_id dummy
scoreboard objectives add neo.nk_st dummy

# AJ
function animated_java:global/on_load


# トリガー
function neofunction:system/trigger/.all_trigger_make

# ボスバー
function neofunction:asset/bossbar/0

# setdisplay
scoreboard objectives setdisplay list LVL
scoreboard objectives setdisplay sidebar world
scoreboard objectives setdisplay below_name health

# 付随
execute as @a unless score @s LVL matches -2147483648..2147483647 run function neofunction:system/setting/99_scoreboard_set_player

