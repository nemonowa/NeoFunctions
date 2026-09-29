# 命名：load
# 説明：neofunction:system/levelstatssync/load
# 説明：データパック読み込み時に一度だけ実行(#minecraft:load タグ経由)
# 説明：※objectiveの定義は neofunction:system/setting/2_scoreboard 側に集約済み
# >
# =/function neofunction:system/levelstatssync/load

# --- 定数(実数値 × 100 のスケールで保持) ---
# HP: 20 + level*0.4
scoreboard players set #c_hp_base ls_const 2000
scoreboard players set #c_hp_inc ls_const 40

# 攻撃力: 1 + level*0.1
scoreboard players set #c_atk_base ls_const 100
scoreboard players set #c_atk_inc ls_const 10

# SPmax: 100 + level*2
scoreboard players set #c_sp_base ls_const 10000
scoreboard players set #c_sp_inc ls_const 200

# 金ハート(max_absorption): 8 + level*0.16
scoreboard players set #c_ab_base ls_const 800
scoreboard players set #c_ab_inc ls_const 16

# 汎用定数
scoreboard players set #c_100 ls_const 100

# --- 初期化時点でのサーバー最大レベルを集計しておく ---
scoreboard players set #global lv_max 0
execute as @a run scoreboard players operation #global lv_max > @s LVL

# --- 現在オンラインの全員に一度同期を適用しておく(再読み込み対策) ---
execute as @a at @s run function neofunction:system/levelstatssync/per_player
