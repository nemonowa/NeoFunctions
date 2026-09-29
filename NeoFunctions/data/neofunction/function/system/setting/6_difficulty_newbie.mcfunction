# 命名：6_difficulty_newbie
# 説明：ルーキー：マイクラ操作に慣れていない方、ストレスフリーでストーリーだけなぞりたい方向けの難易度です。
# 説明：難易度設定（補助輪付きじゃぼけぇ！）
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:system/setting/6_difficulty_newbie


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/6_difficulty_newbie"}

# /gamerule
difficulty easy
gamerule keep_inventory true
gamerule natural_health_regeneration true
gamerule forgive_dead_players true
gamerule universal_anger false
gamerule mob_griefing false
gamerule fire_spread_radius_around_player 0
gamerule spawn_phantoms false
gamerule spawn_patrols false
gamerule water_source_conversion false
gamerule players_sleeping_percentage 0

# 通知
tellraw @a [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"0-0-0-0-1","underlined":false},{"text":"> "},{"text":"難易度","bold":true},{"text":"が","color":"white"},{"text":"「ルーキー」","color":"gold","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"説明：マイクラ操作に慣れていない方、ストレスフリーでストーリーだけなぞりたい方向けの難易度です。\ndifficulty easy\ngamerule keepInventory true\ngamerule naturalRegeneration true\ngamerule forgiveDeadPlayers true\ngamerule universalAnger false\ngamerule mobGriefing false\ngamerule doInsomnia false\ngamerule doPatrolSpawning false\ngamerule waterSourceConversion false\ngamerule doFireTick false\ngamerule playersSleepingPercentage 0"}]}},{"text":"に変更されました。"},{"text":"over.","color":"light_purple"}]

