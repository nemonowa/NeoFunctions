# 命名：setting
# 説明：初期化処理。ワールドセッティング。
# 実行条件：初回ロード
# >/function neofunction:asset/event/hello_world
# =/function neofunction:system/setting


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting"}

schedule function neofunction:system/setting/1_gamerule_for_survival 10t replace
schedule function neofunction:system/setting/2_scoreboard 20t replace
schedule function neofunction:system/setting/3_scoreboard_set 30t replace
schedule function neofunction:asset/team/setting 40t replace
schedule function neofunction:system/setting/5_storage 50t replace

execute as @a[gamemode=creative,limit=1] run schedule function neofunction:system/setting/1_gamerule_for_creater 15t replace

schedule function neofunction:system/clock/all_clock_start 60t replace
