# 命名：pick
# 説明：聖堂の拾い物を右クリックしたとき：東の奥の北の鍵（一度だけ）、西の奥の水路の栓（一度だけ）、壁画の間のアズールの手記 その二（人ごとに一度）
# 説明：最初の泉の涙は 40/d2/tear
# 実行条件：実行者 プレイヤー。引数 k＝key・plug・j2
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d2/pick

# 内容
$function neofunction:system/rubra/d2/pick_$(k)
