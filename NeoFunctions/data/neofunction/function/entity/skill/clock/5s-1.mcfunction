# 命名：5s-1
# 説明：指定tagを持つエンティティを3秒毎に対象距離制限あり
# 説明：条件: 5s-1
# >/function neofunction:entity/skill/clock/5s
# =/function neofunction:entity/skill/clock/5s-1


#ブルーコロナ
execute as @s[tag=bluecorona,predicate=neofunction:has_target,predicate=neofunction:random_chance/40] at @s run function neofunction:entity/skill/blue_corona1
#レッドコロナ
execute as @s[tag=redcorona,predicate=neofunction:has_target,predicate=neofunction:random_chance/40] at @s run function neofunction:entity/skill/red_corona1
#砲
execute as @s[tag=suncanoncaster,predicate=neofunction:has_target,predicate=neofunction:random_chance/40] at @s run function neofunction:entity/skill/suncanon1





