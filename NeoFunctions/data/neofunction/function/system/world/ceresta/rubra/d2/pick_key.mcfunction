# 命名：pick_key
# 説明：東の奥の台から北の鍵（1915）を取る（一度だけ。なくしたら制作用の reset で）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/world/ceresta/rubra/d2/pick
# =/function neofunction:system/world/ceresta/rubra/d2/pick_key

# 内容
execute if data storage neofunction:rubra d2{key:1b} run return run tellraw @s {"text":"台の上には、もう何もない。","color":"gray","italic":true}
data modify storage neofunction:rubra d2.key set value 1b
loot give @s loot neofunction:item/1915
playsound minecraft:block.chain.break player @s ~ ~ ~ 1 1.2
tellraw @a[distance=..32] {"text":"台の上に、青い石の鍵が置かれていた。「北の鍵」を手に入れた。","color":"#7FD8FF","italic":true}
