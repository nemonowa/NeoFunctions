# 命名：skill-special-end
# 説明：終影審判【エンド・オブ・シャドウ】の終了処理。
# 説明：関連タグ・カウンターをリセットし、締めの演出を出す。
# >/function neofunction:player/job/assasin/skill-special-loop
# =/function neofunction:player/job/assasin/skill-special-end


tag @s remove assasin-special
tag @e[tag=assasin-special-1] remove assasin-special-1
tag @e[tag=assasin-special-hit] remove assasin-special-hit
tag @e[tag=assasin-special-current] remove assasin-special-current
scoreboard players set @s SpecialHit 0

# 演出：連撃の終わりに影が霧散する
playsound minecraft:entity.enderman.teleport record @s ~ ~ ~ 0.6 0.7
particle minecraft:smoke ~ ~1 ~ 0.4 0.6 0.4 0.02 20 normal
