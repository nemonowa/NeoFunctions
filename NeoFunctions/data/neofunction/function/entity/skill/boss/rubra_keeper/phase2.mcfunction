# 命名：phase2
# 説明：【追加：2026-10-09 ルブラ編】体力が半分（350）を切った：広間の床に黒い水が満ちる
# 説明：【変更：2026-10-14】広間を半径 21 に広げたので、床ぜんぶではなく番人のまわりの帯（中心から 6〜13 マスの八角形）だけにした。壁ぎわの水門の道は空いたまま。帯の中の低い柱 4 本（外側の段から上る）が、番人のそばへ渡る足場になる
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/phase2

# 内容
data modify storage neofunction:rubra keeper.phase set value 2
function neofunction:entity/skill/boss/rubra_keeper/band
particle minecraft:squid_ink ~ ~0.5 ~ 8 0.3 8 0.05 400 normal
playsound minecraft:block.sculk_catalyst.bloom hostile @a[distance=..48] ~ ~ ~ 2 0.5
playsound minecraft:ambient.underwater.enter hostile @a[distance=..48] ~ ~ ~ 2 0.5
tellraw @a[distance=..40] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「番人のまわりが、黒い水で……！　旅人さん、低い柱の段から上って渡って！　水門は、壁ぎわを回れば届きます！」"}]
