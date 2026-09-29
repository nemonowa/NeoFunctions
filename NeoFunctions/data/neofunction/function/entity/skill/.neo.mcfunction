# 命名：.neo
# 説明：tagを持つエンティティを対象(常時実行するようなスキル)
# 説明：毎tick。tag=!vanillaのエンティティ ★付きは最重要処理、常時追跡の中で重要（距離制限等を除外必須なやつとか）
# >/function neofunction:entity/tick
# =/function neofunction:entity/skill/.neo


# 最重要
# 常時追跡が必要なエンティティ
###########################どのタグにも該当しなければ64m制限のタグへ移る
execute if entity @s[tag=!fly1,tag=!downer,tag=!upper,tag=!fly0,tag=!boss] run return run function neofunction:entity/skill/.neo-1

# fly1 奈落復帰
execute if entity @s[tag=fly1] run function neofunction:entity/skill/fly1

# 上にエンティティがいなくなったら消える。機動用コウモリなど。(downer)
execute if entity @s[tag=downer] unless predicate neofunction:downer run tag @s add del

# 下のエンティティがいなくなったら消える。ヘルメットスポナーなど。(upper)
execute if entity @s[tag=upper] unless predicate neofunction:upper run tag @s add del

# 接地削除処理(fly0)
execute if entity @s[tag=fly0] run tag @s[nbt={OnGround:true}] add del

# boss（分岐後に重い処理）
execute if entity @s[tag=boss] run function neofunction:entity/skill/boss/.neo

# 64m制限のタグへ移る
function neofunction:entity/skill/.neo-1


