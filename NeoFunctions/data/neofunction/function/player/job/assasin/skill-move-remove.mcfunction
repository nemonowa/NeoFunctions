# 命名：風蹴
# 説明：忍者ならとべます。
# 実行条件：暗殺士官【ASSASIN】
# >/function neofunction:player/job/assasin/skill-move
# =/function neofunction:player/job/assasin/skill-move-remove



# 効果開始
tellraw @a[tag=assasin-move] [{"text":"風蹴の効果が切れた！","color":"red"}]
playsound minecraft:block.glass.break master @a[tag=assasin-move] ~ ~ ~ 1 1
tag @a remove assasin-move






