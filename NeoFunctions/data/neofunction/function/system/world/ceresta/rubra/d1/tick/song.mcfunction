# 命名：song
# 説明：深い層で聞こえる「歌」（星の子守唄）。4 秒に 1 回ぐらい、足もとの遠くから
# 説明：ボスを倒したあと（416 以降）は聞こえない
# 実行条件：実行者 プレイヤー（y30 以下）
# >/function neofunction:system/world/ceresta/rubra/d1/tick
# =/function neofunction:system/world/ceresta/rubra/d1/tick/song

# 内容
execute if score #temp main_story matches 416.. run return 0
execute store result score #rubra_r temp run random value 1..4
execute unless score #rubra_r temp matches 1 run return 0
playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~-8 ~ 0.5 0.5
