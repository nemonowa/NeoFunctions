# 命名：night
# 説明：戦いのあいだは夜で止める（時間を真夜中にし、時の流れを止める）
# 実行条件：どこでも
# >/function neofunction:entity/skill/boss/rubra_void/start_2
# >/function neofunction:entity/skill/boss/rubra_void/ctl_tick
# =/function neofunction:entity/skill/boss/rubra_void/night

# 内容
time set midnight
gamerule advance_time false
# 時を止めた印（戻し損ねたら guide が戻す）
data modify storage neofunction:rubra fin_night set value 1b
