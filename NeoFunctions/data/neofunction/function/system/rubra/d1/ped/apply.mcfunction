# 命名：apply
# 説明：台を置いた・回したときの音を鳴らす。扉は動かさない（鐘を鳴らしたときに ring が判定する）
# 説明：向きと当たる扉：北 1→壁 2→扉1（赤） 3→扉2（青） ／ 西 1→扉3（金） 2→壁 3→扉2（青） ／ 南 1→扉1（赤） 2→扉3（金） 3→壁
# >/function neofunction:system/rubra/d1/ped/place
# >/function neofunction:system/rubra/d1/ped/turn
# =/function neofunction:system/rubra/d1/ped/apply

# 内容
playsound minecraft:block.amethyst_block.chime block @a[distance=..16] ~ ~ ~ 1 0.7
