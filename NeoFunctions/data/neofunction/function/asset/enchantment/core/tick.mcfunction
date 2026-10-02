# 命名：tick
# 説明：爆心ごとの毎 tick の処理。時間を進め、種類ごとの進行・衝撃波を動かす
# 実行条件：爆心（マーカー）として、その位置で
# >/function neofunction:asset/enchantment/core/loop
# =/function neofunction:asset/enchantment/core/tick


# 内容
scoreboard players add @s neo.nk_t 1
scoreboard players operation #cur neo.nk_id = @s neo.nk_id
scoreboard players operation #t neo.nk_tmp = @s neo.nk_t
execute if score @s neo.nk_kind matches 1 run function neofunction:asset/enchantment/tentsui/tick
execute if score @s neo.nk_kind matches 2 run function neofunction:asset/enchantment/reiten/tick
execute if score @s neo.nk_kind matches 3 run function neofunction:asset/enchantment/shuuen/tick
execute if score @s neo.nk_kind matches 4 run function neofunction:asset/enchantment/choushinsei/tick
execute if entity @s[scores={neo.nk_r=0..}] run function neofunction:asset/enchantment/core/wave
