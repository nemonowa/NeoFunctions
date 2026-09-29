# 命名：copy
# 説明：エンティティ処理
# 実行条件：進捗達成時
# >(=neofunction:.skill/0)
# =/function neofunction:asset/skill/1/copy


## 内容
tellraw @s [{"text":"+++-———————————————————————"}]
tellraw @s [{"text":"名前："},{"selector":"@s"}]
tellraw @s [{"text":"異名：漂流の異邦人"}]
tellraw @s[scores={job=0}] {"text":"称号：未所持"}
#function neofunction:asset/skill/1/roll
tellraw @s[scores={job=0}] {"text":"称号：未所持"}
#function neofunction:asset/skill/1/job
tellraw @s [{"text":"LVL:"},{"score":{"name":"@s","objective":"LVL"}},{"text":" (left:"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"LVL"}},{"text":")"}]
tellraw @s [{"text":"HP:"},{"nbt":"Health","entity":"@s"},{"text":"     SP:"},{"score":{"name":"@s","objective":"SPmax"}}]
tellraw @s [{"text":"ATK:"},{"score":{"name":"@s","objective":"ATK"}},{"text":"     SPD:"},{"score":{"name":"@s","objective":"SPD"}}]
tellraw @s [{"text":"DEF:"},{"score":{"name":"@s","objective":"DEF"}},{"text":"     ARM:"},{"score":{"name":"@s","objective":"ARM"}}]
#tellraw @s [{"text":"CRT:"},{"score":{"name":"@s","objective":"CRT"}},{"text":"     RES:"},{"score":{"name":"@s","objective":"RES"}}]"
#tellraw @s [{"text":"INT:"},{"score":{"name":"@s","objective":"INT"}},{"text":"     LUK:"},{"score":{"name":"@s","objective":"LUK"}}]"
tellraw @s [{"text":"———————————————————————-+++"}]

# 消費SP
scoreboard players remove @s SP 8

