# 命名：3_scoreboard_set
# 説明：サイドバー作成
# 説明：スコア作成（削除/scoreboard players reset SurvivalDays world）
# >/function neofunction:system/setting
# =/function neofunction:system/setting/3_scoreboard_set


# 内容  
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/3_scoreboard_set"}

scoreboard objectives add world dummy "§2§k|§e§k|§a§k|§b§k|§r§f§l§2§lThe§e§lWorld§a§lof§b§lWonders§f§l§r§2§k|§a§k|§2§k|§a§k|§r"
scoreboard objectives modify world displayname "§2§k|§e§k|§a§k|§b§k|§r§f§l§2§lThe§e§lWorld§a§lof§b§lWonders§f§l§r§2§k|§a§k|§2§k|§a§k|§r"

# 生存日数
scoreboard players set time world 0
scoreboard players display name time world "時刻：§b§l8§r 日数："

# 世界レベル(Depth-Level)
scoreboard players set level world -1
scoreboard players display name level world "侵攻深度："

# upper
scoreboard players set upper world 99999
scoreboard players display name upper world "+++-———————————————"
scoreboard players display numberformat upper world blank

# バージョン
scoreboard players set version world 3700
scoreboard players display name version world "v0.2forMC1.20.4"
execute store result score version world run data get entity @p DataVersion

# クレジット浄化総数：Credit【$$$】
scoreboard players set credit world 0
scoreboard players display name credit world "浄化総数："

# CTM目標達成数343
# scoreboard players set ctm world 0
# scoreboard players display name ctm world "CTM-Completed"

# 世界線変動(難易度)D-Difficulty
scoreboard players set difficulty world 100
scoreboard players display name difficulty world "世界難度：§a新秩序"

# downer
scoreboard players set downer world -99999
scoreboard players display name downer world "———————————————-+++"
scoreboard players display numberformat downer world blank

# リンク
scoreboard players set url world -100000
scoreboard players display name url world "§6nexusource.github.io"
scoreboard players display numberformat url world blank
#scoreboard players reset url world

# サイドバー
scoreboard objectives setdisplay sidebar world
#scoreboard objectives setdisplay sidebar

#オプション
scoreboard players set progress_mode temp 0
scoreboard players set playerglow temp 0

# スターシャード
execute unless score 1c temp matches -2147483648..2147483647 run scoreboard players set 1c temp 0
execute unless score 2c temp matches -2147483648..2147483647 run scoreboard players set 2c temp 0
execute unless score 3c temp matches -2147483648..2147483647 run scoreboard players set 3c temp 0
execute unless score 4c temp matches -2147483648..2147483647 run scoreboard players set 4c temp 0
execute unless score 5c temp matches -2147483648..2147483647 run scoreboard players set 5c temp 0
execute unless score 6c temp matches -2147483648..2147483647 run scoreboard players set 6c temp 0
execute unless score 7c temp matches -2147483648..2147483647 run scoreboard players set 7c temp 0
execute unless score 8c temp matches -2147483648..2147483647 run scoreboard players set 8c temp 0
execute unless score 9c temp matches -2147483648..2147483647 run scoreboard players set 9c temp 0

#メインクエスト用のフラグ
scoreboard players set #temp main_story 0

# 曲の長さを定義(秒)
scoreboard players set #Sieraboss MusicTimer 140
scoreboard players set #Valiant MusicTimer 173
scoreboard players set #Harvestdance MusicTimer 585
scoreboard players set #Safedungeon MusicTimer 258
scoreboard players set #Credits MusicTimer 602
scoreboard players set #Epicbattle MusicTimer 197
scoreboard players set #Obsession MusicTimer 189
scoreboard players set #World_OP2 MusicTimer 125
scoreboard players set #Pastorale3 MusicTimer 149
scoreboard players set #Whisper MusicTimer 249
scoreboard players set #DeepWoods4 MusicTimer 192
scoreboard players set #CityLuxefa MusicTimer 140
scoreboard players set #city_billy MusicTimer 165
scoreboard players set #StainedGlassShiningInTheDarkNight MusicTimer 237
scoreboard players set #Katabasis MusicTimer 182
scoreboard players set #BattleFun MusicTimer 161
scoreboard players set #MaouBgmOrchestra16 MusicTimer 108
scoreboard players set #harvest4 MusicTimer 206

# 固定数値
scoreboard objectives add const dummy
scoreboard players set $-1 const -1
scoreboard players set $0 const 0
scoreboard players set $1 const 1
scoreboard players set $2 const 2
scoreboard players set $3 const 3
scoreboard players set $4 const 4
scoreboard players set $5 const 5
scoreboard players set $6 const 6
scoreboard players set $7 const 7
scoreboard players set $8 const 8
scoreboard players set $9 const 9
scoreboard players set $10 const 10
scoreboard players set $20 const 20
scoreboard players set $27 const 27
scoreboard players set $60 const 60
scoreboard players set $64 const 64
scoreboard players set $100 const 100
scoreboard players set $1000 const 1000
scoreboard players set $10000 const 10000
scoreboard players set $100000 const 100000
scoreboard players set $1200 const 1200
scoreboard players set $72000 const 72000
scoreboard players set $31743 const 31743
scoreboard players set $65536 const 65536

