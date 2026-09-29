# 間違ったボタンを押した時の処理:カウンターを0に戻し、全ランプを消してやり直しにする
scoreboard players set #hgv_progress temp 0
function neofunction:system/world/ceresta/horsegraveyard/reset_lamps

# ↓ ~ ~ ~ を中央の墓の座標に書き換えてください(失敗音を鳴らす場所)
playsound minecraft:block.note_block.bass record @a ~ ~ ~ 1 0.5
