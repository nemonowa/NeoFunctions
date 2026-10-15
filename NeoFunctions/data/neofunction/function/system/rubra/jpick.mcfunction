# 命名：jpick
# 説明：街に置いた手記を右クリック：その一（1908）・その三（1910）・その四（1911）。人ごとに一度（タグ rubra_j1・rubra_j3・rubra_j4）
# 実行条件：実行者 プレイヤー（クリックされた interaction にタグ rubra_clicked）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/jpick

# 内容
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_j1] run return run function neofunction:system/rubra/jpick_one {k:"1",where:"書見台に、古い手記が一冊、開いたまま置かれていた。"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_j3] run return run function neofunction:system/rubra/jpick_one {k:"3",where:"洗い場の石の陰に、古い手記が落ちていた。子どもたちの手まり歌と、同じ言葉が書いてある。"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_j4] run return run function neofunction:system/rubra/jpick_one {k:"4",where:"坑道の入口の木箱の上に、古い手記が置き忘れられていた。"}
