# 命名：skylantern_start
# 説明：【追加：2026-10-13 ルブラ編】星還祭：広場から灯籠が夜空へ昇っていく演出を始める。手記を明かしていれば（choice.reveal）たくさん、伏せていればまばらに。すでに昇っている最中なら何もしない（会話の Command は人ごとに動くので）
# 実行条件：セレスタ次元（442 の会話の Command から）
# >/function neofunction:system/adv/tick/quest/40/fin/442
# =/function neofunction:system/rubra/fin/skylantern_start

# 内容
execute if data storage neofunction:rubra skyl.t run return 0
data modify storage neofunction:rubra skyl set value {t:0,many:0b}
execute if data storage neofunction:rubra choice{reveal:"reveal"} run data modify storage neofunction:rubra skyl.many set value 1b
execute positioned 921.5 45 3300.5 run playsound minecraft:block.fire.ambient ambient @a[distance=..64] ~ ~ ~ 2 0.8
schedule function neofunction:system/rubra/fin/skylantern_tick 1t replace
