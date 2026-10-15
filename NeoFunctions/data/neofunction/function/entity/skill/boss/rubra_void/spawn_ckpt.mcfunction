# 命名：spawn_ckpt
# 説明：再戦のとき：到達した形態から（第 2 → 体力 700、第 3 → 300。次の tick に本体の処理が形態を進める）
# 説明：出現処理が済んだ（タグ mob が付いた）あとに tick から呼ぶ。第 3 からのときは第 2 の演出を飛ばす（form を 2 にしておく）
# 実行条件：実行者 本体（tick から、fin.ckp が 1b で、タグ mob が付いているとき）
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/spawn_ckpt

# 内容
data modify storage neofunction:rubra fin.ckp set value 0b
execute if data storage neofunction:rubra fin{ckpt:2} run data modify entity @s Health set value 700.0f
execute if data storage neofunction:rubra fin{ckpt:3} run data modify entity @s Health set value 300.0f
execute if data storage neofunction:rubra fin{ckpt:3} run data modify storage neofunction:rubra fin.form set value 2
execute store result score @s HP run data get entity @s Health
execute if data storage neofunction:rubra fin{ckpt:2} run tellraw @a[distance=..160] {"text":"（再戦：第 2 形態から）","color":"gray"}
execute if data storage neofunction:rubra fin{ckpt:3} run tellraw @a[distance=..160] {"text":"（再戦：第 3 形態から）","color":"gray"}
