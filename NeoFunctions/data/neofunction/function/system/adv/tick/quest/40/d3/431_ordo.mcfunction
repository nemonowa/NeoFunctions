# 命名：431_ordo
# 説明：trust.ordo が 1 以上（第二章で「オルドの言うことも分かる」を選んだ）なら、オルドが自分の悔いを話す一行
# 実行条件：実行者 プレイヤー（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/431（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/431_ordo

# 内容
execute unless data storage neofunction:rubra trust.ordo run return 0
execute if data storage neofunction:rubra trust{ordo:0} run return 0
tellraw @s [{"text":"<"},{"text":"オルド","color":"#4A7BD0","bold":true},{"text":"> 「……客人。あの夜、館でそなたが言ってくれたことに、わしは救われた。だが本当は、誰かに責めてほしかったのかもしれん。四十年、星の泣く声を聞かぬふりをしてきた」"}]
