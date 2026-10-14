# 命名：phase2
# 説明：【追加：2026-10-08 ルブラ編】体力が半分（300）を切った。【変更：2026-10-14】ミラの光はやめた。速くなり（plan）、予告が短くなり（warn_start・charge_warn_start）、連続突き上げとのしかかりを使い始める
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/phase2

# 内容
data modify storage neofunction:rubra worm.phase set value 2
playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ ~ ~ 3 0.4
particle minecraft:dust{color:[1.0,0.2,0.1],scale:2.0} ~ ~1 ~ 2 2 2 0 120 normal
tellraw @a[distance=..64] {"text":"ソウルイーターが身をよじり、怒りの声を上げた。地の底が、ずっと騒がしくなる――","color":"#FF8C6B","italic":true}
