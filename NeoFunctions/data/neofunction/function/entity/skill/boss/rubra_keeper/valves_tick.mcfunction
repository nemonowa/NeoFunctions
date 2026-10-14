# 命名：valves_tick
# 説明：【追加：2026-10-09 ルブラ編】四隅の水門（毎 tick）：開いている水門の残り時間を減らし、番人へ流れる水を見せる。四つとも開いていたら番人を洗う
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/valves_tick

# 内容
scoreboard players set #rk_open temp 0
scoreboard players set #rk_min temp 99999
function neofunction:entity/skill/boss/rubra_keeper/valve_one {v:"v1",i:"1"}
function neofunction:entity/skill/boss/rubra_keeper/valve_one {v:"v2",i:"2"}
function neofunction:entity/skill/boss/rubra_keeper/valve_one {v:"v3",i:"3"}
function neofunction:entity/skill/boss/rubra_keeper/valve_one {v:"v4",i:"4"}
# 【追加：2026-10-09】開いている水門の数と、いちばん早く閉じる水門の残り秒数を、番人の間にいる人の画面に出す（0.5 秒ごと）
execute store result score #rk_m temp run data get storage neofunction:rubra keeper.t
scoreboard players operation #rk_m temp %= $10 const
execute if score #rk_m temp matches 0 if data storage neofunction:rubra keeper{wash:0} run function neofunction:entity/skill/boss/rubra_keeper/show
execute if score #rk_open temp matches 4 run function neofunction:entity/skill/boss/rubra_keeper/wash
