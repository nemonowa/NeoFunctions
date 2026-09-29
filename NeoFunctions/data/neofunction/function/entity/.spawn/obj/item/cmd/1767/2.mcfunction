# 命名：2
# 説明：name：1767/2
# 説明：description：When item/1767 throw
# >/function neofunction:entity/.spawn/obj/item/cmd/1767/1
# =/function neofunction:entity/.spawn/obj/item/cmd/1767/2

# contents
$summon text_display ~ ~ ~ {view_range:0f,Tags:["temp_text","del"],text:{"translate":"Breathes.sakura.$(SakuraBreathes)"}}
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_name" set from entity @e[tag=temp_text,limit=1,sort=nearest] text