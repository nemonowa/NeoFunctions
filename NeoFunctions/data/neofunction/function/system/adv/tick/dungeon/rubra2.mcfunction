# 命名：rubra2
# 説明：【追加：2026-10-09 ルブラ編】涸れ泉の聖堂（第二章の迷宮）の範囲にいるプレイヤーの 1 秒ごとの処理
# 説明：黒い水（黒いカーペット）の上では暗闇と衰弱、黒い水の溜まりから黒い滴りが湧く、物語の区切り
# 実行条件：実行者 プレイヤー（聖堂の範囲の中）
# >/advancement neofunction:tick/dungeon/rubra2
# =/function neofunction:system/adv/tick/dungeon/rubra2

# 内容
# 黒い水の上（【変更：2026-10-09】跳んでいるとき・足場の上にいるときは数えない。地面に立っていて、足もとが黒いカーペットのときだけ）
execute if predicate neofunction:rubra/on_ground if block ~ ~ ~ minecraft:black_carpet run function neofunction:system/adv/tick/dungeon/rubra2/black
# 黒い滴り（水門で押し流すまで、黒い水の溜まりの近くで湧く）
execute unless data storage neofunction:rubra d2{flushed:1b} if entity @e[type=marker,tag=rubra_flush,distance=..14] run function neofunction:system/adv/tick/dungeon/rubra2/drip
# 【追加：2026-10-14】壁画の間の黒い水の水門二つ（番人の水門の練習）
execute unless data storage neofunction:rubra d2{flushed:1b} if entity @e[type=marker,tag=rubra_flush,distance=..28] run function neofunction:system/rubra/d2/fvalve_tick
# 【追加：2026-10-14】番人の間・壁画の間の作り直しを、今のワールドに一度だけ反映する
execute unless data storage neofunction:rubra {d2h:1} positioned 960 52 3158 if entity @s[distance=..40] run function neofunction:system/rubra/d2/upgrade_hall
# 物語の区切り
function neofunction:system/adv/tick/quest/40/d2/zone
