# 命名：forge_match
# 説明：強化の表に、手に持っている道具の行があるか
# 実行条件：実行者 プレイヤー。引数 id（手に持っている道具の番号）
# >/function neofunction:system/rubra/mine/forge
# =/function neofunction:system/rubra/mine/forge_match

# 内容
$execute unless data storage neofunction:rubra forge.r."$(id)" run return run tellraw @s {"text":"星鍛冶の金床。強化できる道具を手に持って、右クリック。","color":"gray","italic":true}
$function neofunction:system/rubra/mine/forge_apply with storage neofunction:rubra forge.r."$(id)"
