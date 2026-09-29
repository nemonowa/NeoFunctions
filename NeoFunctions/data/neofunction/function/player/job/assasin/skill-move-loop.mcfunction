# 命名：風蹴
# 説明：スケジュールループなので実行者に注意！！！
# 実行条件：暗殺士官【ASSASIN】
# >/function neofunction:player/job/assasin/skill-move
# =/function neofunction:player/job/assasin/skill-move-loop


# 通常浮遊
effect give @a[tag=assasin-move] levitation 2 1 true
effect clear @a[tag=assasin-move] slow_falling

# 下に浮遊：スニークしているとき
effect give @a[tag=assasin-move,scores={sneak_time=1..}] slow_falling 2 0 true
effect clear @a[tag=assasin-move,scores={sneak_time=1..}] levitation

# 効果持続中
execute as @a[tag=assasin-move] at @s run playsound minecraft:entity.ender_dragon.flap master @a[tag=assasin-move,distance=..16] ~ ~ ~ 0.5 1.6 0
execute as @a[tag=assasin-move] at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0 0.5 0 30 force


# ループ：忍者かつ特定の浮遊ならループ
execute unless entity @a[tag=assasin-move] run return 1
schedule function neofunction:player/job/assasin/skill-move-loop 1s append







