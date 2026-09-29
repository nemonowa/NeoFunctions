# 命名：apply_attr
# 説明：neofunction:system/levelstatssync/apply_attr
# 説明：macro function。neofunction:system/levelstatssync/temp ストレージの hp / atk / absorb (double) を
# 説明：そのまま attribute base set のリテラル値として埋め込む。
# 説明：$() の中身はNBTから読んだ値がそのままコマンド文字列に展開される。
# >
# =/function neofunction:system/levelstatssync/apply_attr

$attribute @s minecraft:max_health base set $(hp)
$attribute @s minecraft:attack_damage base set $(atk)
$attribute @s minecraft:max_absorption base set $(absorb)
