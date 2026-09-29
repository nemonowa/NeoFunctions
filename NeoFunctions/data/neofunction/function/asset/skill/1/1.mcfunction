# 命名：1
# 説明：エンティティ処理
# 実行条件：進捗達成時
# >(=neofunction:.skill/0)
# =/function neofunction:asset/skill/1/1


## 内容
tellraw @s "+++-———————————————————————"

tellraw @s [{"text":"名称："},{"selector":"@s"}]

tellraw @s [{"text":"異名：漂流の異邦人"}]

#tellraw @s[scores={job=0}] {"text":"階級：大佐"}
#function neofunction:asset/skill/1/roll
#tellraw @s[scores={job=0}] {"text":"称号：観測者"}
#function neofunction:asset/skill/1/job

tellraw @s {"text":"レベル："}
tellraw @s {"text":"最大HP：　最大SP："}
tellraw @s {"text":"アンカー総接続数："}
tellraw @s {"text":"エネミー総発見数："}
tellraw @s {"text":"アイテム総獲得数："}
tellraw @s [{"text":"スポナー総破壊数："},{"score":{"name":"@s","objective":"minedSpawner"}}]

tellraw @s [{"text":"———————————————————————-+++"}]

# 消費MP
scoreboard players remove @s SP 8

