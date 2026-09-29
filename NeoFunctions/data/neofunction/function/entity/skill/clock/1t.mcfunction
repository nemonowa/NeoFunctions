# 命名：1t
# 説明：tagを持つエンティティを対象(常時実行するようなスキル)
# 説明：毎tick。tag=!vanillaのエンティティ ★付きは最重要処理、常時追跡の中で重要（距離制限等を除外必須なやつとか）
# >/function neofunction:entity/tick
# =/function neofunction:entity/skill/clock/1t


# 全体
# 常時追跡が必要なエンティティ

# fly1 奈落復帰★
execute if entity @s[tag=fly1] as @s[tag=fly1] run function neofunction:entity/skill/fly1

# boss★
execute if entity @s[tag=boss] as @s[tag=boss] run function neofunction:entity/skill/boss/.neo

# 上にエンティティがいなくなったら消える。機動用コウモリなど。(downer)
execute if entity @s[tag=downer] as @s[tag=downer] unless predicate neofunction:downer run tag @s add del

# 下のエンティティがいなくなったら消える。ヘルメットスポナーなど。(upper)
execute if entity @s[tag=upper] as @s[tag=upper] unless predicate neofunction:upper run tag @s add del

# 接地削除処理(fly0)
execute if entity @s[tag=fly0,nbt={OnGround:true}] as @s[tag=fly0,nbt={OnGround:true}] run tag @s add del