# 命名：cam_start
# 説明：【未使用：2026-10-01】俯瞰カメラはいったん無効にした（どこからも呼ばれていない）。戻すときは各 tick・開始処理から呼ぶ
# 説明：俯瞰カメラの開始。戻る位置を覚え、爆心の上空（本人側へ 40・上へ 35）の見えない防具立てに乗せて、爆心を向かせる
# 実行条件：爆心の位置で。本人に neo.nk_owner タグ、temp の #nk_cur に番号
# >/function neofunction:asset/enchantment/tentsui/place
# =/function neofunction:asset/enchantment/core/cam_start


# 内容
summon minecraft:marker ~ ~ ~ {Tags:["neo.nk_ret","neo.nk_new2"]}
execute as @e[type=marker,tag=neo.nk_new2] run tp @s @a[tag=neo.nk_owner,limit=1]
execute as @e[type=marker,tag=neo.nk_new2] run data modify entity @s Rotation set from entity @a[tag=neo.nk_owner,limit=1] Rotation
scoreboard players operation @e[type=marker,tag=neo.nk_new2] neo.nk_id = #nk_cur temp
tag @e[type=marker,tag=neo.nk_new2] remove neo.nk_new2
execute facing entity @a[tag=neo.nk_owner,limit=1] feet rotated ~ 0 positioned ^ ^ ^40 positioned ~ ~35 ~ run summon minecraft:armor_stand ~ ~ ~ {Tags:["neo.nk_cam","neo.nk_new2"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
scoreboard players operation @e[type=armor_stand,tag=neo.nk_new2] neo.nk_id = #nk_cur temp
ride @a[tag=neo.nk_owner,limit=1] mount @e[type=armor_stand,tag=neo.nk_new2,limit=1]
tag @e[type=armor_stand,tag=neo.nk_new2] remove neo.nk_new2
rotate @a[tag=neo.nk_owner,limit=1] facing ~ ~ ~
