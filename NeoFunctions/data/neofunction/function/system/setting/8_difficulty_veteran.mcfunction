# 命名：8_difficulty_veteran
# 説明：ベテラン：ハードモードです。刺激が欲しい方へ。
# 説明：難易度設定（来たれ。純粋なる戦士よ。）
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:system/setting/8_difficulty_veteran


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/8_difficulty_veteran"}

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
gamerule players_sleeping_percentage 100

# 通知
tellraw @a [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"0-0-0-0-1","underlined":false},{"text":"> "},{"text":"難易度","bold":true},{"text":"が","color":"white"},{"text":"「ベテラン」","color":"gold","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"説明：ハードモードです。刺激が欲しい方へ。\ndifficulty hard\ngamerule keepInventory false\ngamerule naturalRegeneration false\ngamerule forgiveDeadPlayers false\ngamerule universalAnger true\ngamerule mobGriefing true\ngamerule doInsomnia true\ngamerule doPatrolSpawning true\ngamerule waterSourceConversion true\ngamerule doFireTick true\ngamerule playersSleepingPercentage 100"}]}},{"text":"に変更されました。"},{"text":"over.","color":"light_purple"}]

