# 命名：35
# 説明：トリガーすると、周囲16m以内のエンティティ１匹アイサツする。SP3消費。
# >/function neofunction:entity/35
# =/function neofunction:asset/skill/35



## 内容：名乗りを上げる
tellraw @a[distance=..16] [{"text":"<"},{"text":"漂流の異邦人"},{"text":"> 「ドーモ。"},{"selector":"@e[distance=0.1..16,limit=1,sort=nearest]"},{"text":"=サン。"},{"selector":"@s"},{"text":"です」"}]


tellraw @a[distance=..16] [{"text":"<"},{"selector":"@e[distance=0.1..16,limit=1,sort=nearest]"},{"text":"> 「ドーモ！」"}]

# 消費SP
scoreboard players remove @s SP 3