# 命名：forge
# 説明：星鍛冶の金床を右クリック：メインハンドの道具の番号（custom_model_data）で強化の表を引き、素材がそろっていれば素材を使って上の段の道具に取り替える
# 実行条件：実行者 プレイヤー（クリックされた interaction にタグ rubra_clicked）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/world/ceresta/rubra/mine/forge

# 内容
execute unless data storage neofunction:rubra forge{v:2} run function neofunction:system/world/ceresta/rubra/mine/recipes
# メインハンドの物を hand で写してから読む
function neofunction:system/world/ceresta/rubra/mine/hand
execute store result storage neofunction:rubra forge.id int 1 run data get storage neofunction:rubra hand.components."minecraft:custom_model_data".floats[0]
function neofunction:system/world/ceresta/rubra/mine/forge_match with storage neofunction:rubra forge
