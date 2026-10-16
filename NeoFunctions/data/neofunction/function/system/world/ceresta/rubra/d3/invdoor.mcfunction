# 命名：invdoor
# 説明：反転の間の扉を右クリック（くぐる）：正しい扉なら次の部屋（天地が逆さまの部屋）へ、まちがいなら最初の部屋へ戻る
# 説明：扉は部屋ごとに 3 つ（1 丸・2 四角・3 星）。正しい扉：部屋 1 → 2（四角）、部屋 2 → 3（星）、部屋 3 → 1（丸）。部屋の壁の絵が、その部屋の正しい扉の形を逆さまに描いている
# 実行条件：実行者 プレイヤー（クリックされた interaction にタグ rubra_clicked）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/world/ceresta/rubra/d3/invdoor

# 内容
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_inv_r1_d2] run return run function neofunction:system/world/ceresta/rubra/d3/invgo {to:"2"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_inv_r2_d3] run return run function neofunction:system/world/ceresta/rubra/d3/invgo {to:"3"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_inv_r3_d1] run return run function neofunction:system/world/ceresta/rubra/d3/invgo {to:"4"}
# まちがい：最初の部屋へ
function neofunction:system/world/ceresta/rubra/d3/invgo {to:"1"}
tellraw @s {"text":"扉をくぐった瞬間、世界がくるりと回った。……気がつくと、最初の部屋に戻っていた。","color":"#A8A8C8","italic":true}
