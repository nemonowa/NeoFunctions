# 命名：.neo
# 説明：テンプレート：codeにも書き込まないと呼び出されないので注意
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1381310667042062428
# >/function neofunction:system/trigger/code
# >/trigger code set 1
# =/function neofunction:system/trigger/code/.neo


## 内容：名乗りを上げる
tellraw @a[distance=..16] [{"text":"<"},{"text":"漂流の異邦人"},{"text":"> 「ドーモ。"},{"selector":"@e[distance=0.1..16,limit=1,sort=nearest]"},{"text":"=サン。"},{"selector":"@s"},{"text":"です」"}]

tellraw @a[distance=..16] [{"text":"<"},{"selector":"@e[distance=0.1..16,limit=1,sort=nearest]"},{"text":"> 「ドーモ！」"}]


# 消費SP
scoreboard players remove @s SP 4
function neofunction:player/sp/.neo