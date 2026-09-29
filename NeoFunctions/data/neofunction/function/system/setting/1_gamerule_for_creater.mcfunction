# 命名：1_gamerule_for_creater
# 説明：ワールドセッティング
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:system/setting/1_gamerule_for_creater


## 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/1_gamerule_for_creater"}

#gamerule
gamerule show_advancement_messages true
gamerule command_block_output true
gamerule raids false
gamerule advance_time true
gamerule entity_drops true
gamerule fire_spread_radius_around_player 0
gamerule spawn_phantoms false
gamerule limited_crafting false
gamerule mob_drops false
gamerule spawn_mobs false
gamerule spawn_patrols false
gamerule block_drops false
gamerule spawn_wandering_traders false
gamerule advance_weather false
gamerule drowning_damage true
gamerule spawn_wardens true
gamerule fall_damage true
gamerule fire_damage true
gamerule forgive_dead_players false
gamerule freeze_damage true
gamerule keep_inventory true
gamerule log_admin_commands true
gamerule max_entity_cramming 12
gamerule mob_griefing false
gamerule natural_health_regeneration false
gamerule players_sleeping_percentage 1000
gamerule random_tick_speed 0
gamerule reduced_debug_info false
gamerule send_command_feedback true
gamerule show_death_messages true
gamerule respawn_radius 1
gamerule spectators_generate_chunks true
gamerule universal_anger true
gamerule water_source_conversion true
gamerule max_block_modifications 2147483647
gamerule max_command_sequence_length 2147483647
gamerule spread_vines false

# その他
team join white @a
setworldspawn 1280 128 1280
difficulty normal
defaultgamemode creative
execute in neodimension:nexus run forceload add 1 1 -1 -1


#tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false},{"selector":"0-0-0-0-1","underlined":false},{"text":"> ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"/gamerule","color":"white","bold":true,"italic":false},{"text":"が","color":"white","bold":false,"italic":false},{"text":"制作用","color":"gold","aqua":true,"italic":false},{"text":"に変更されました。","color":"white","bold":false,"italic":false},{"text":"over.","color":"light_purple","bold":false,"italic":false}]
