# 命名：pick_plug
# 説明：西の奥（水車の部屋の先）で水路の栓（1916）を取る（一度だけ）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/world/ceresta/rubra/d2/pick
# =/function neofunction:system/world/ceresta/rubra/d2/pick_plug

# 内容
execute if data storage neofunction:rubra d2{plugtaken:1b} run return run tellraw @s {"text":"棚には、もう何もない。","color":"gray","italic":true}
data modify storage neofunction:rubra d2.plugtaken set value 1b
loot give @s loot neofunction:item/1916
playsound minecraft:block.copper.break player @s ~ ~ ~ 1 1
tellraw @a[distance=..32] {"text":"古い棚に、青銅の栓が残っていた。「水路の栓」を手に入れた。真ん中の部屋の床の穴に、はまりそうだ。","color":"#7FD8FF","italic":true}
