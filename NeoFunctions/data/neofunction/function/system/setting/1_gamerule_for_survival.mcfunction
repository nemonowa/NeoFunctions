# 命名：1_gamerule_for_survival
# 説明：ワールドセッティング
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:system/setting/1_gamerule_for_survival


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/1_gamerule_for_survival"}

#gamerule
gamerule show_advancement_messages true
gamerule command_block_output false
gamerule raids false
gamerule advance_time true
gamerule entity_drops true
gamerule fire_spread_radius_around_player 0
gamerule spawn_phantoms true
gamerule limited_crafting false
gamerule mob_drops true
gamerule spawn_mobs true
gamerule spawn_patrols true
gamerule block_drops true
gamerule spawn_wandering_traders true
gamerule advance_weather true
gamerule drowning_damage true
gamerule spawn_wardens true
gamerule fall_damage true
gamerule fire_damage true
gamerule forgive_dead_players false
gamerule freeze_damage true
# キープインベントリ
gamerule keep_inventory true
gamerule log_admin_commands true
gamerule max_entity_cramming 12
gamerule mob_griefing false
# 自然回復
gamerule natural_health_regeneration true
gamerule players_sleeping_percentage 0
# gamerule players_sleeping_percentage 1000
gamerule random_tick_speed 3
gamerule reduced_debug_info true
gamerule send_command_feedback false
gamerule show_death_messages true
gamerule respawn_radius 8
gamerule spectators_generate_chunks true
gamerule universal_anger true
gamerule water_source_conversion true
gamerule max_block_modifications 2147483647
gamerule max_command_sequence_length 2147483647
gamerule spread_vines false

# その他
team join white @a
#setworldspawn 1280 128 1280
difficulty normal
defaultgamemode adventure
execute in neodimension:nexus run forceload add 1 1 -1 -1

#tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false},{"selector":"0-0-0-0-1","underlined":false},{"text":"> ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"/gamerule","color":"white","bold":true,"italic":false},{"text":"が","color":"white","bold":false,"italic":false},{"text":"ULTサバイバル","color":"gold","bold":true,"italic":false},{"text":"に変更されました。","color":"white","bold":false,"italic":false},{"text":"over.","color":"light_purple","bold":false,"italic":false}]
