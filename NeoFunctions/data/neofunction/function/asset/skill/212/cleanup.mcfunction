# 命名：212/cleanup
# 説明：前回「自分が」発動した連鎖の残骸（マーカー・タグ）だけを掃除する（マクロ関数）
# 説明：※他プレイヤーの連鎖には一切影響しない（$(id)は前回発行された古いChain212ID）
# >
# =/function neofunction:asset/skill/212/cleanup

$kill @e[tag=chain212_marker_$(id)]
$tag @e[tag=chain212_hit_$(id)] remove chain212_hit_$(id)
$tag @e[tag=chain212_current_$(id)] remove chain212_current_$(id)
tag @s remove chain212_caster
