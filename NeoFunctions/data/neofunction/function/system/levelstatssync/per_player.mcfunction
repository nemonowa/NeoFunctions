# 命名：per_player
# 説明：neofunction:system/levelstatssync/per_player
# 説明：@s = 対象プレイヤー。 main.mcfunction から execute as @a で呼ばれる想定。
# >
# =/function neofunction:system/levelstatssync/per_player

# ===== 1. gap と sync_rate(%) の計算 =====
# gap = lv_max - own_level (0未満は0にクランプ)
scoreboard players operation @s ls_gap = #global lv_max
scoreboard players operation @s ls_gap -= @s LVL
execute if score @s ls_gap matches ..-1 run scoreboard players set @s ls_gap 0

# lv_maxが0(異常系)なら安全に rate=0
execute if score #global lv_max matches 0 run scoreboard players set @s ls_rate 0
execute unless score #global lv_max matches 0 run scoreboard players operation @s ls_rate = @s ls_gap
execute unless score #global lv_max matches 0 run scoreboard players operation @s ls_rate *= #c_100 ls_const
execute unless score #global lv_max matches 0 run scoreboard players operation @s ls_rate /= #global lv_max

# ===== 2. HP (max_health) =====
scoreboard players operation @s ls_own = @s LVL
scoreboard players operation @s ls_own *= #c_hp_inc ls_const
scoreboard players operation @s ls_own += #c_hp_base ls_const

scoreboard players operation @s ls_max = #global lv_max
scoreboard players operation @s ls_max *= #c_hp_inc ls_const
scoreboard players operation @s ls_max += #c_hp_base ls_const

scoreboard players operation @s ls_syn = @s ls_max
scoreboard players operation @s ls_syn -= @s ls_own
scoreboard players operation @s ls_syn *= @s ls_rate
scoreboard players operation @s ls_syn /= #c_100 ls_const
scoreboard players operation @s ls_syn += @s ls_own

execute store result storage neofunction:system/levelstatssync/temp hp double 0.01 run scoreboard players get @s ls_syn

# ===== 3. 攻撃力 (attack_damage) =====
scoreboard players operation @s ls_own = @s LVL
scoreboard players operation @s ls_own *= #c_atk_inc ls_const
scoreboard players operation @s ls_own += #c_atk_base ls_const

scoreboard players operation @s ls_max = #global lv_max
scoreboard players operation @s ls_max *= #c_atk_inc ls_const
scoreboard players operation @s ls_max += #c_atk_base ls_const

scoreboard players operation @s ls_syn = @s ls_max
scoreboard players operation @s ls_syn -= @s ls_own
scoreboard players operation @s ls_syn *= @s ls_rate
scoreboard players operation @s ls_syn /= #c_100 ls_const
scoreboard players operation @s ls_syn += @s ls_own

execute store result storage neofunction:system/levelstatssync/temp atk double 0.01 run scoreboard players get @s ls_syn

# ===== 4. 金ハート (max_absorption) =====
scoreboard players operation @s ls_own = @s LVL
scoreboard players operation @s ls_own *= #c_ab_inc ls_const
scoreboard players operation @s ls_own += #c_ab_base ls_const

scoreboard players operation @s ls_max = #global lv_max
scoreboard players operation @s ls_max *= #c_ab_inc ls_const
scoreboard players operation @s ls_max += #c_ab_base ls_const

scoreboard players operation @s ls_syn = @s ls_max
scoreboard players operation @s ls_syn -= @s ls_own
scoreboard players operation @s ls_syn *= @s ls_rate
scoreboard players operation @s ls_syn /= #c_100 ls_const
scoreboard players operation @s ls_syn += @s ls_own

execute store result storage neofunction:system/levelstatssync/temp absorb double 0.01 run scoreboard players get @s ls_syn

# ===== 5. attribute へ反映(macro経由で小数を直接コマンドに埋め込む) =====
function neofunction:system/levelstatssync/apply_attr with storage neofunction:system/levelstatssync/temp

# ===== 6. SPmax (プレーンなscoreboard値。小数不要なので整数のまま反映) =====
scoreboard players operation @s ls_own = @s LVL
scoreboard players operation @s ls_own *= #c_sp_inc ls_const
scoreboard players operation @s ls_own += #c_sp_base ls_const

scoreboard players operation @s ls_max = #global lv_max
scoreboard players operation @s ls_max *= #c_sp_inc ls_const
scoreboard players operation @s ls_max += #c_sp_base ls_const

scoreboard players operation @s ls_syn = @s ls_max
scoreboard players operation @s ls_syn -= @s ls_own
scoreboard players operation @s ls_syn *= @s ls_rate
scoreboard players operation @s ls_syn /= #c_100 ls_const
scoreboard players operation @s ls_syn += @s ls_own
scoreboard players operation @s ls_syn /= #c_100 ls_const

scoreboard players operation @s SPmax = @s ls_syn
