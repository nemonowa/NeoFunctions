# 命名：3s
# 説明：指定tagを持つエンティティを3秒毎に対象距離制限あり
# 説明：条件: 3s
# >/function neofunction:entity/skill/clock/3s
# =/function neofunction:entity/skill/clock/3s-1

# 全体

# tagSkill
execute as @s[tag=warp] as @s[predicate=neofunction:random_chance/30] run function neofunction:entity/skill/warp
execute as @s[tag=frogcome] if predicate neofunction:random_chance/10 run function neofunction:entity/skill/frogcome

execute as @s[tag=frogscome] if predicate neofunction:random_chance/10 at @s run function neofunction:entity/skill/frogcome
execute as @s[tag=frogshaman] if predicate neofunction:random_chance/10 at @s run function neofunction:entity/skill/frogshaman
execute as @s[tag=frogshaman] if predicate neofunction:random_chance/10 run function neofunction:entity/skill/frog_bolt
execute as @s[tag=run] as @s[predicate=neofunction:random_chance/10] run function neofunction:entity/skill/run


