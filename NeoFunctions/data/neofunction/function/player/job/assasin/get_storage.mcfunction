# 命名：get_storage
# 説明：
# 実行条件：暗殺士官【ASSASIN】の防具一時保存関連
# >/function neofunction:player/job/assasin/enarmor
# =/function neofunction:player/job/assasin/get_storage


# 説明：自分の防具用ストレージを呼び出す [PlayerName]をtempに代入
$data modify storage neofunction:job/assasin temp set from storage neofunction:job/assasin players.$(Name)

