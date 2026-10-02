# 命名：cam_ride
# 説明：【未使用：2026-10-01】俯瞰カメラはいったん無効にした（どこからも呼ばれていない）。戻すときは各 tick・開始処理から呼ぶ
# 説明：本人がカメラ（neo.nk_cam の防具立て）に乗っていなければ、カメラを終える
# 実行条件：カメラを使っている本人（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/core/cam_check
# =/function neofunction:asset/enchantment/core/cam_ride


# 内容
execute on vehicle if entity @s[tag=neo.nk_cam] run return 0
function neofunction:asset/enchantment/core/cam_end
