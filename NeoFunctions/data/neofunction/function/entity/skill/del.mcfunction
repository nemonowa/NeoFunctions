# 命名：システムによる完全抹消用処理
# 説明：NBT変更してから削除(付けてから1tick後に消える)
# >/function neofunction:entity/tick
# =/function neofunction:entity/skill/del

#召喚獣の場合専用メッセ(これはあんまりよくない)
execute if entity @s[tag=familiar] run function neofunction:entity/skill/familiardel

# 実行条件：[tag=del]が存在するとき
data merge entity @s {Health:0f,AbsorptionAmount:0f,DeathTime:19s,DeathLootTable:"empty",Silent:true,Size:0,DropItem:0b}
kill @s