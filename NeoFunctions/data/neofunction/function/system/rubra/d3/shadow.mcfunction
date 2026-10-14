# 命名：shadow
# 説明：【追加：2026-10-09 ルブラ編】闇の中から影（910）が滲み出す
# 実行条件：実行位置 影の湧く所（目印 rubra_shadow_spawn、またはボスのまわり）
# >/function neofunction:system/adv/tick/dungeon/rubra3/dark
# >/function neofunction:entity/skill/boss/rubra_cradle/attack_shadow
# =/function neofunction:system/rubra/d3/shadow

# 内容
particle minecraft:squid_ink ~ ~1 ~ 0.4 0.6 0.4 0.02 30 normal
playsound minecraft:entity.vex.ambient hostile @a[distance=..20] ~ ~ ~ 1 0.5
function neofunction:asset/summon/910
