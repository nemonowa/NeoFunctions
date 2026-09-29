# 命名：defdown_clear（249）
# 説明：249の防御低下(armor属性modifier)を解除する専用ファイル。
# 説明：249発動時に schedule function で5秒後（100t）にappend予約され、単発で呼び出される。
# 説明：対象は skill249_defdown タグを持つ全エンティティ。固定UUIDのmodifierを除去してタグも外す。
# >
# =/function neofunction:asset/skill/249-1

execute as @e[tag=skill249_defdown] run attribute @s minecraft:armor modifier remove neofunction:00000249-0000-0000-0000-000000000249
execute as @e[tag=skill249_defdown] run tag @s remove skill249_defdown
