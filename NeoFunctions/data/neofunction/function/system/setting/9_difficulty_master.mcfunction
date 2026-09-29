# 命名：9_difficulty_master
# 説明：マスター：二周目以降に解放されます。補助なし手加減なしの真クルーへの挑戦的なモードです。
# 説明：難易度設定（戦争だよ。）
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:system/setting/9_difficulty_master


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/9_difficulty_master"}

# /gamerule
difficulty hard
gamerule keep_inventory false
gamerule natural_health_regeneration false
gamerule forgive_dead_players false
gamerule universal_anger true
gamerule mob_griefing true
gamerule fire_spread_radius_around_player 128
gamerule spawn_phantoms true
gamerule spawn_patrols true
gamerule water_source_conversion true
gamerule players_sleeping_percentage 999

# 通知
tellraw @a [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"0-0-0-0-1","underlined":false},{"text":"> "},{"text":"難易度","bold":true},{"text":"が","color":"white"},{"text":"「マスター」","color":"gold","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"説明：二周目以降に解放されます。補助なし手加減なしの真クルーへの挑戦的なモードです。\ndifficulty hard\ngamerule keepInventory false\ngamerule naturalRegeneration false\ngamerule forgiveDeadPlayers false\ngamerule universalAnger true\ngamerule mobGriefing true\ngamerule doInsomnia true\ngamerule doPatrolSpawning true\ngamerule waterSourceConversion true\ngamerule doFireTick true\ngamerule playersSleepingPercentage 999"}]}},{"text":"に変更されました。"},{"text":"over.","color":"light_purple"}]

