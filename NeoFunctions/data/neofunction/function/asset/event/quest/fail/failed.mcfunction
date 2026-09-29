# 命名：failed
# 説明：共通処理：クエスト失敗共通処理
# 説明：自動
# >/function neofunction:asset/event/quest/fail_pattern/failed
# =/function neofunction:asset/event/quest/fail/failed




## 内容
execute as @s at @s run tellraw @a [{"text":"＊","color":"#D8DE2A","bold":false},{"selector":"@s","color":"red","bold":true},{"text":"がクエストを失敗しました。","color":"#FFD700","bold":false}]
playsound ambient.cave master @s ~ ~ ~ 0.5 1.6
function neofunction:asset/event/quest/init




