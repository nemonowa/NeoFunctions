# 命名：for
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/view
# =/function neofunction:system/adv/tick/cmd/1717/editor/for

data remove storage neofunction:item/1717 Temp
$data modify storage neofunction:item/1717 Temp.Id set value $(i)
scoreboard players add #Calc2 temp 1

execute if data storage neofunction:item/1717 Temp{Id:1718} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Set","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1719} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Add","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1720} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Sub","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1721} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"If","color":"#C586C0"}'
execute if data storage neofunction:item/1717 Temp{Id:1722} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"end","color":"#C586C0"}'
execute if data storage neofunction:item/1717 Temp{Id:1723} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Goto","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1724} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Var","color":"#46C894"}'
execute if data storage neofunction:item/1717 Temp{Id:1725} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"0","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1726} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"1","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1727} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"2","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1728} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"3","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1729} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"4","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1730} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"5","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1731} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"6","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1732} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"7","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1733} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"8","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1734} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"9","color":"#B5CEA8"}'
execute if data storage neofunction:item/1717 Temp{Id:1735} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":",","color":"#FFFFFF"}'
execute if data storage neofunction:item/1717 Temp{Id:1736} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Skill","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1737} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Print","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1738} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"SkillSet","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1761} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Mul","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1762} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Div","color":"#DCDCAA"}'
execute if data storage neofunction:item/1717 Temp{Id:1763} run data modify storage neofunction:item/1717 Temp.Text set value '{"text":"Mod","color":"#DCDCAA"}'


# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
execute unless score #Calc1 temp = #Calc2 temp run data modify entity @e[tag=concat,limit=1,sort=nearest] text set value [{"entity": "@e[tag=concat,limit=1,sort=nearest]","nbt": "text","interpret": true},{"storage": "neofunction:item/1717","nbt": "Temp.Text","interpret": true,"bold": true,"hoverEvent": {"action": "show_text","contents": {"translate": "%1$s文字目","with": [{"score": {"name": "#Calc2","objective": "temp"}}]}}}]
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
execute if score #Calc1 temp = #Calc2 temp run data modify entity @e[tag=concat,limit=1,sort=nearest] text set value [{"entity": "@e[tag=concat,limit=1,sort=nearest]","nbt": "text","interpret": true},{"storage": "neofunction:item/1717","nbt": "Temp.Text","interpret": true,"bold": true,"hoverEvent": {"action": "show_text","contents": {"translate": "%1$s文字目","with": [{"score": {"name": "#Calc2","objective": "temp"}}]}}},{"text": "|"}]