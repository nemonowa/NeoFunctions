# 命名：log-in
# 説明：ログイン処理共通
# 説明：実行者：relog→@リログしたplayer
# 説明：実行者：reload→@server
# 説明：注意！リログ直後(5sくらい？)は常時読み込みチャンクやエンティティが読み込めてない
# 説明：調査モジュールとの接続を確認。サポートを開始します。
# >/function neofunction:load
# >/function neofunction:system/adv/tick/entity_scores/continue
# =/function neofunction:asset/event/log-in


# 内容
execute unless entity @s run stopsound @a
stopsound @s
function neofunction:player/attribute/lvl
function neofunction:system/trigger/.all_trigger_enable

# スコアボード確認用
scoreboard objectives add world dummy
scoreboard players add upper world 0
execute store result score version world run data get entity @a[sort=arbitrary,limit=1] DataVersion
function neofunction:player/sp/percentage

# 音楽流すための処理
function neofunction:asset/event/log-in/music

# ハードコア対策
gamerule spectators_generate_chunks true
execute as @s[gamemode=spectator,scores={survival=120..}] run gamemode survival @a[sort=arbitrary,limit=1]

# color of sanctuaryでリログしたらはじき出される
function neofunction:asset/event/log-in/restricted

# ディスプレイ系のログイン時見た目処理
execute if entity @s run function neofunction:entity/skill/display_login/.neo
# 
schedule function neofunction:asset/event/log-in/server 3s replace
schedule function neofunction:asset/event/log-in/cai1 5s replace
schedule function neofunction:asset/event/log-in/cai2 7s replace
schedule function neofunction:asset/event/log-in/.neo 10s replace

# リログしたら目標の表示
execute as @s run function neofunction:system/adv/tick/cmd/offhand/994/994

execute if entity @s[tag=Talking] run function neofunction:asset/event/talk/schedule_player

execute unless entity @s store result storage neofunction:aj ServerCount int -1 run data get storage neofunction:aj ServerCount -1.00000000001