# 命名：cam_check
# 説明：【未使用：2026-10-01】俯瞰カメラはいったん無効にした（どこからも呼ばれていない）。戻すときは各 tick・開始処理から呼ぶ
# 説明：カメラの見張り。本人がカメラから降りていたら（しゃがんだら）、その場でカメラを終える
# 説明：防具立ての Passengers にはプレイヤーが保存されないため、本人の側から乗り物を調べる
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/core/tick
# =/function neofunction:asset/enchantment/core/cam_check


# 内容
execute as @a if score @s neo.nk_id = #cur neo.nk_id if score @s neo.nk_busy matches 1.. run function neofunction:asset/enchantment/core/cam_ride
