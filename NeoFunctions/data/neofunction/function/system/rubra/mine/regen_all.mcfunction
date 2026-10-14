# 命名：regen_all
# 説明：【追加：2026-10-14 ルブラ編】掘った鉱石を、時間が来たらまた生やす（毎秒。読み込まれている印だけ。読み込まれていない所は、読み込まれたときに生える）
# 実行条件：どこでも（system/rubra/guide から、毎秒）
# >/function neofunction:system/rubra/guide
# =/function neofunction:system/rubra/mine/regen_all

# 内容
execute store result score #ore_now temp run time query gametime
execute as @e[type=marker,tag=rubra_ore] at @s run function neofunction:system/rubra/mine/regen
