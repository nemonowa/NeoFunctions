# 命名：day
# 説明：戦いが終わった・やめた：時の流れを戻す
# 実行条件：どこでも
# >/function neofunction:entity/skill/boss/rubra_void/despawn
# >/function neofunction:system/adv/tick/quest/40/fin/release
# >/function neofunction:system/world/ceresta/rubra/fin/reset_2
# =/function neofunction:entity/skill/boss/rubra_void/day

# 内容
gamerule advance_time true
# 時を止めた印を消す
data remove storage neofunction:rubra fin_night
