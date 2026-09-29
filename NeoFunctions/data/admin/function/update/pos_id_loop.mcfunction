# 命名：pos_id_loop
# 説明：26.3 移行用（pos_name_26_3 から呼ぶ）。名前のある地点 pos:0〜400 のうち、番号(id)を持っていないものに番号を足す。.macro が pos:$(id) から名前をコピーするため
# 説明：admin:update の n を 1 ずつ増やしながら自分を呼び直す
# >/function admin:update/pos_name_26_3
# =/function admin:update/pos_id_loop with storage admin:update pos_id

$execute if data storage pos:$(n) name unless data storage pos:$(n) id run data modify storage pos:$(n) id set value $(n)
execute store result storage admin:update pos_id.n int 1 run scoreboard players add #pos_id temp 1
execute if score #pos_id temp matches ..400 run function admin:update/pos_id_loop with storage admin:update pos_id