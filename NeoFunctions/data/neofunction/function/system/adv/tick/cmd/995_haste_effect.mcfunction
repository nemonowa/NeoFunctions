# 命名：995_haste_effect
# 説明：外付けのhasteに対応するやつ
# 実行条件：異界の火器をもってシステム以外からのhaste
# >/function neofunction:system/adv/tick/995
# =/function neofunction:system/adv/tick/cmd/995_haste_effect
execute store result score HasteLevel temp run data get storage neofunction:item/995 Haste.amplifier
execute if score @s HasteLevel matches -2147483648..2147483647 if score @s HasteLevel >= HasteLevel temp run return 0
#execute if score HasteLevel temp = @s MiningSpeedBefore run return 0
scoreboard players operation @s HasteLevel = HasteLevel temp
scoreboard players add @s HasteLevel 1
execute store result score @s HasteDuration run data get storage neofunction:item/995 Haste.duration
