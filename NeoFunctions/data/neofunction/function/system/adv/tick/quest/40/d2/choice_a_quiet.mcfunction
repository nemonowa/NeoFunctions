# 命名：choice_a_quiet
# 説明：【追加：2026-10-09 ルブラ編】選択 A「黙っている」：何も変わらない
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a
# =/function neofunction:system/adv/tick/quest/40/d2/choice_a_quiet

# 内容
data modify storage neofunction:rubra talk set value [{Text:{text:"旅人は、何も言わなかった。燭台の火が、小さく揺れた。",color:"gray",italic:true},Delay:90,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.6},Command:"function neofunction:system/adv/tick/quest/40/d2/421_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
