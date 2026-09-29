# 命名：once
# 説明：プレイヤー起点
# 説明：[プレイ時間][時間][MCver][ver][UUID]
# 説明：説明	$(mcver):$(ver):$(time):$(gametime):$(level):$(uuid0):$(uuid1):$(uuid2):$(uuid3)
# >/data get storage neofunction:asset
# >/function neofunction:system/setting/5_storage
# =/function neofunction:asset/data/once



# 内容
##プレイバージョン(ver)
# 【変更：2026-09-28 26.3対応】26.3 の SNBT は 0.0.0 を数値として読もうとしてエラーになるため、1.20.4 と同じ文字列 "0.0.0" にする
data modify storage neofunction:asset ver set value "0.0.0"