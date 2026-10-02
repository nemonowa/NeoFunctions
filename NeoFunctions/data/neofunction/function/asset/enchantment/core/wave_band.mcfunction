# 命名：wave_band
# 説明：衝撃波が今通過している輪の範囲（a〜b ブロック）のモブを選ぶ
# 実行条件：爆心の位置で、ストレージ neofunction:enchantment wave を引数に
# >/function neofunction:asset/enchantment/core/wave
# =/function neofunction:asset/enchantment/core/wave_band


# 内容
$execute as @e[distance=$(a)..$(b),type=!player,type=!armor_stand,tag=!friendly,tag=!neo.nk_hit] if data entity @s HurtTime run function neofunction:asset/enchantment/core/wave_hit
