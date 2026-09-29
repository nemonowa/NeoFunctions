# 命名：2..
# 説明：トリガー
# 説明：@a[scores={teleport=2..}]
# >/trigger teleport
# =/function neofunction:system/trigger/teleport/2..


# 内容
$function neofunction:system/pos/.macro with storage pos:$(id)

# 保存処理は転移の方で(neofunction:system/pos/.macro
# $data modify storage pos:prev dimension set from storage pos:$(id) dimension
# $data modify storage pos:prev name set from storage pos:$(id) name
# $data modify storage pos:prev x set from storage pos:$(id) x
# $data modify storage pos:prev y set from storage pos:$(id) y
# $data modify storage pos:prev z set from storage pos:$(id) z