# 命名：3_macro
# 説明：
# >/function neofunction:entity/skill/jump_burst/3
# =/function neofunction:entity/skill/jump_burst/3_macro

$execute as @a[distance=..5] run damage @s $(Damage) explosion by @e[tag=JumpBurst2,limit=1,sort=nearest]