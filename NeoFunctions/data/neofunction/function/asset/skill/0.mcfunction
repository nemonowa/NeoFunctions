# 命名：0
# 説明：エンティティ処理
# 実行条件：進捗達成時
# >(=neofunction:.skill/0)
# =/function neofunction:asset/skill/0


## 内容
#
#tellraw @s [{"text":"+++-———————————————————————"}]"
#tellraw @s [{"text":"名前："},{"selector":"@s"}]"
#tellraw @s [{"text":"種族：クラフター"}]"
#function neofunction:asset/skill/0/roll
#function neofunction:asset/skill/0/job
#tellraw @s [{"text":"レベル:"},{"score":{"name":"@s","objective":"LVL"}},{"text":" (left:"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"LVL"}},{"text":")"}]"
#tellraw @s [{"text":"カルマ:"},{"score":{"name":"@s","objective":"karman"}},{"text":"     RES:"},{"score":{"name":"@s","objective":"RES"}}]"
#tellraw @s [{"text":"気体温:"},{"nbt":"Health","entity":"@s"},{"text":"     SP:"},{"score":{"name":"@s","objective":"SPmax"}}]"
#tellraw @s [{"text":"感染率:"},{"score":{"name":"@s","objective":"infection"}},{"text":"     SPD:"},{"score":{"name":"@s","objective":"SPD"}}]"
#tellraw @s [{"text":"攻略率:"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"DEF"}},{"text":"     ARM:"},{"score":{"name":"@s","objective":"ARM"}}]"
#tellraw @s [{"text":"———————————————————————-+++"}]"

#tellraw @s ["",{"text":"+++-———————————————————————\n種族：クラフター   名前："},{"selector":"@s"},{"text":"\n職業：創造者   称号：ARIA"},{"text":"\nLVL:"},{"score":{"name":"0-0-0-0-1","objective":"LVL"}},{"text":"     EXP:"},{"score":{"name":"0-0-0-0-1","objective":"EXP"}},{"text":"\nHP:"},{"score":{"name":"@s","objective":"HP"}},{"text":"      SP:"},{"score":{"name":"@s","objective":"SPmax"}},{"text":"\nATK:"},{"score":{"name":"@s","objective":"ATK"}},{"text":"     SPD:"},{"score":{"name":"@s","objective":"SPD"}},{"text":"\nDEF:"},{"score":{"name":"@s","objective":"DEF"}},{"text":"     ARM:"},{"score":{"name":"@s","objective":"ARM"}},{"text":"\nCRT:"},{"score":{"name":"@s","objective":"CRT"}},{"text":"     RES:"},{"score":{"name":"@s","objective":"RES"}},{"text":"\nINT:"},{"score":{"name":"@s","objective":"INT"}},{"text":"     LUK:"},{"score":{"name":"@s","objective":"LUK"}},{"text":"\n———————————————————————-+++"}]"

#
tellraw @s [{"text":"+++-———————————————————————"}]
tellraw @s [{"text":"名前："},{"selector":"@s"}]
tellraw @s [{"text":"種族：クラフター"}]
#tellraw @s [{"text":"職業：創造者   称号：ARIA"}]"
tellraw @s [{"text":"LVL:"},{"score":{"name":"@s","objective":"LVL"}},{"text":" (left:"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"LVL"}},{"text":")"}]
tellraw @s [{"text":"HP:"},{"nbt":"Health","entity":"@s"},{"text":"     SP:"},{"score":{"name":"@s","objective":"SPmax"}}]
tellraw @s [{"text":"ATK:"},{"score":{"name":"@s","objective":"ATK"}},{"text":"     SPD:"},{"score":{"name":"@s","objective":"SPD"}}]
tellraw @s [{"text":"DEF:"},{"score":{"name":"@s","objective":"DEF"}},{"text":"     ARM:"},{"score":{"name":"@s","objective":"ARM"}}]
#tellraw @s [{"text":"CRT:"},{"score":{"name":"@s","objective":"CRT"}},{"text":"     RES:"},{"score":{"name":"@s","objective":"RES"}}]"
#tellraw @s [{"text":"INT:"},{"score":{"name":"@s","objective":"INT"}},{"text":"     LUK:"},{"score":{"name":"@s","objective":"LUK"}}]"
tellraw @s [{"text":"———————————————————————-+++"}]

## 消費MP
scoreboard players remove @s SP 10

## クールタイム
scoreboard players add @s CT 5

## ゲージ 半分/4 くらいの空腹
## effect give @s hunger 1 10 false

