# 命名：return_storage
# 説明：自分の防具用ストレージを返す tempを[PlayerName]に代入
# 実行条件：暗殺士官【ASSASIN】の防具一時保存関連
# >/function neofunction:player/job/assasin/disarmor
# =/function neofunction:player/job/assasin/return_storage


$data remove storage neofunction:job/assasin players.$(Name)
$data modify storage neofunction:job/assasin players.$(Name) set from storage neofunction:job/assasin temp
#$say $(Name)

