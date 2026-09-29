# 命名：212/chain_end
# 説明：レゾナンス・チェイン 連鎖終了処理（マクロ関数／$(id) = このキャスターの連鎖ID）
# 説明：※マルチ対応：自分のIDが付いたマーカー・タグだけを掃除する（他プレイヤーには触れない）
# >
# =/function neofunction:asset/skill/212/chain_end

# 後片付け（自分の分のみ）
$kill @e[tag=chain212_marker_$(id)]
$tag @e[tag=chain212_hit_$(id)] remove chain212_hit_$(id)
$tag @e[tag=chain212_current_$(id)] remove chain212_current_$(id)
tag @s remove chain212_caster
scoreboard players set @s ChainCount212 0

# 締めの演出（連鎖が途切れた合図）
playsound minecraft:block.beacon.deactivate record @s ~ ~ ~ 0.6 1.0
