# 命名：apply
# 説明：記録（storage neofunction:rubra d2.lv）どおりに、水量の柱・扉・浮き橋を合わせる
# 説明：入口の広間：柱 0 が 2 で扉 0 が開く ／ 東：2 以上で浮き橋が上がる ／ 西：ちょうど 1 で扉が開く（2 以上だと水圧で閉じる） ／ 北：0 で、鍵を開けてあれば扉が開く
# 実行条件：セレスタ次元（目印のエンティティを使う）
# >/function neofunction:system/world/ceresta/rubra/d2/setup_in
# >/function neofunction:system/world/ceresta/rubra/d2/water/valve
# >/function neofunction:system/world/ceresta/rubra/d2/water/plug
# >/function neofunction:system/world/ceresta/rubra/d2/water/northlock
# =/function neofunction:system/world/ceresta/rubra/d2/water/apply

# 内容
execute store result score #r2_z temp run data get storage neofunction:rubra d2.lv.z
execute store result score #r2_e temp run data get storage neofunction:rubra d2.lv.e
execute store result score #r2_w temp run data get storage neofunction:rubra d2.lv.w
execute store result score #r2_n temp run data get storage neofunction:rubra d2.lv.n
# 水量の柱
execute as @e[type=marker,tag=rubra_gauge_0] at @s run function neofunction:system/world/ceresta/rubra/d2/water/tube {s:"#r2_z"}
execute as @e[type=marker,tag=rubra_gauge_e] at @s run function neofunction:system/world/ceresta/rubra/d2/water/tube {s:"#r2_e"}
execute as @e[type=marker,tag=rubra_gauge_w] at @s run function neofunction:system/world/ceresta/rubra/d2/water/tube {s:"#r2_w"}
execute as @e[type=marker,tag=rubra_gauge_n] at @s run function neofunction:system/world/ceresta/rubra/d2/water/tube {s:"#r2_n"}
# 扉と浮き橋
execute if score #r2_z temp matches 2.. as @e[type=marker,tag=rubra_door_0] at @s run function neofunction:system/world/ceresta/rubra/d2/door/open
execute unless score #r2_z temp matches 2.. as @e[type=marker,tag=rubra_door_0] at @s run function neofunction:system/world/ceresta/rubra/d2/door/close
execute if score #r2_e temp matches 2.. as @e[type=marker,tag=rubra_bridge_e] at @s run function neofunction:system/world/ceresta/rubra/d2/door/bridge_up
execute unless score #r2_e temp matches 2.. as @e[type=marker,tag=rubra_bridge_e] at @s run function neofunction:system/world/ceresta/rubra/d2/door/bridge_down
execute if score #r2_w temp matches 1 as @e[type=marker,tag=rubra_door_w] at @s run function neofunction:system/world/ceresta/rubra/d2/door/open
execute unless score #r2_w temp matches 1 as @e[type=marker,tag=rubra_door_w] at @s run function neofunction:system/world/ceresta/rubra/d2/door/close
execute if score #r2_n temp matches 0 if data storage neofunction:rubra d2{unlock:1b} as @e[type=marker,tag=rubra_door_n] at @s run function neofunction:system/world/ceresta/rubra/d2/door/open
execute unless score #r2_n temp matches 0 as @e[type=marker,tag=rubra_door_n] at @s run function neofunction:system/world/ceresta/rubra/d2/door/close
execute unless data storage neofunction:rubra d2{unlock:1b} as @e[type=marker,tag=rubra_door_n] at @s run function neofunction:system/world/ceresta/rubra/d2/door/close
