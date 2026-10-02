# 命名：cam_end
# 説明：【未使用：2026-10-01】俯瞰カメラはいったん無効にした（どこからも呼ばれていない）。戻すときは各 tick・開始処理から呼ぶ
# 説明：俯瞰カメラの終了。降ろして元の位置・向きへ戻し、カメラと戻る位置の印を消す
# 実行条件：使った本人（#cur に番号）
# >/function neofunction:asset/enchantment/core/cam_ride
# >/function neofunction:asset/enchantment/core/cleanup
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/core/cam_end


# 内容
ride @s dismount
execute as @e[type=marker,tag=neo.nk_ret] if score @s neo.nk_id = #cur neo.nk_id run tag @s add neo.nk_ret_this
execute at @e[type=marker,tag=neo.nk_ret_this,limit=1] rotated as @e[type=marker,tag=neo.nk_ret_this,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[type=marker,tag=neo.nk_ret_this]
execute as @e[type=armor_stand,tag=neo.nk_cam] if score @s neo.nk_id = #cur neo.nk_id run kill @s
scoreboard players reset @s neo.nk_busy
