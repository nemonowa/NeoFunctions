# 命名：pillars_off
# 説明：【追加：2026-10-09 ルブラ編】星灯の柱をすべて消す
# 実行条件：どこでも
# >/function neofunction:entity/skill/boss/rubra_void/form1
# >/function neofunction:entity/skill/boss/rubra_void/form2
# >/function neofunction:entity/skill/boss/rubra_void/form2_start
# >/function neofunction:entity/skill/boss/rubra_void/despawn
# =/function neofunction:entity/skill/boss/rubra_void/pillars_off

# 内容
execute as @e[type=marker,tag=rubra_pillar] at @s run setblock ~ ~ ~ minecraft:black_stained_glass
