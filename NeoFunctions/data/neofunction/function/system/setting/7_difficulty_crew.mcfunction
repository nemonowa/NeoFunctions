# 命名：7_difficulty_crew
# 説明：クルー：おすすめ！基本の難易度です。まずはここから。
# 説明：難易度設定（ようこそ新世界へ）
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:system/setting/7_difficulty_crew


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/7_difficulty_crew"}

# /gamerule
difficulty normal
gamerule keep_inventory false
gamerule natural_health_regeneration true
gamerule forgive_dead_players true
gamerule universal_anger true
gamerule mob_griefing false
gamerule fire_spread_radius_around_player 0
gamerule spawn_phantoms false
gamerule spawn_patrols false
gamerule water_source_conversion true
gamerule players_sleeping_percentage 50

# 通知
tellraw @a [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"0-0-0-0-1","underlined":false},{"text":"> "},{"text":"難易度","bold":true},{"text":"が","color":"white"},{"text":"「クルー」","color":"gold","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"説明：おすすめ！基本の難易度です。まずはここから。\ndifficulty normal\ngamerule keepInventory false\ngamerule naturalRegeneration true\ngamerule forgiveDeadPlayers true\ngamerule universalAnger true\ngamerule mobGriefing false\ngamerule doInsomnia false\ngamerule doPatrolSpawning false\ngamerule waterSourceConversion true\ngamerule doFireTick false\ngamerule playersSleepingPercentage 50"}]}},{"text":"に変更されました。"},{"text":"over.","color":"light_purple"}]

