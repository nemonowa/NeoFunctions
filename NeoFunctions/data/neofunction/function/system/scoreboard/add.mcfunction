# 命名：add
# 説明：複数の実行元から一人だけに実行させたい。Q「特定のマイクラ内のゲーム時間になったときに、プレイヤー全員が実行するコマンド（進捗timecheck）があります。このコマンドに日数記録スコアを位置進める処理を入れると、シングルプレイだと一日に一ずつスコアが進みますが、マルチでは人数分一気にスコアが進みます。この条件でみんなならどうマイクラで実装する？（gametimeをクエリは除外）」
# >
# =/function neofunction:system/scoreboard/add



scoreboard players add time world 1