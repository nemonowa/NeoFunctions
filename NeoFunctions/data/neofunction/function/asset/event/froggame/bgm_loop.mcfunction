# 命名：bgm_loop
# 説明：froggame BGM(battle_fun/10)を尺(約161秒)に合わせて自動で流し直すループ処理
#      W9で初回起動され、以降はウェーブ番号やインフィニティモードの間隔に関係なく
#      161秒周期で自己再スケジュールし続ける(ゲームが続く限りBGMが途切れない)
# >/function neofunction:asset/event/froggame/w9 ←初回はここから呼び出し(160s地点)
# >/function neofunction:asset/event/froggame/bgm_loop ←以降は自己再スケジュールでループ
# =/function neofunction:asset/event/froggame/bgm_loop


# 内容

# 参加者がいなくなったらループを止める(全滅・end済みなら以降スケジュールしない)
execute unless entity @a[tag=froggame] run return 0

execute as @a[tag=froggame] at @s run playsound minecraft:neo/asset/peritune/battle_fun/10 record @s ~ ~ ~ 2.0 1.0

# 曲の尺(約161秒。実測値がずれる場合はここを調整)で自己再スケジュール
# 通常ウェーブ(W10〜W15)からインフィニティモードまで、ゲームが終わるまでずっと継続する
schedule function neofunction:asset/event/froggame/bgm_loop 161s
