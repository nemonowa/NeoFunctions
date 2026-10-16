# 命名：northlock
# 説明：北の部屋（壁画の間）の扉の鍵穴：北の鍵（1915）を手に持って右クリックで開く。開いたあとは、北の水が 0 のときだけ扉が開く
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/world/ceresta/rubra/d2/water/northlock

# 内容
execute if data storage neofunction:rubra d2{unlock:1b} if data storage neofunction:rubra d2.lv{n:0} run return 0
execute if data storage neofunction:rubra d2{unlock:1b} run return run tellraw @s {"text":"鍵は開いている。でも、扉の向こうは水でいっぱいだ。北の水を 0 にしよう。","color":"gray","italic":true}
execute unless items entity @s weapon.mainhand minecraft:trial_key[minecraft:custom_model_data={floats:[1915.0f]}] run return run tellraw @s {"text":"青い石の扉に、鍵穴がある。扉の向こうから、水の音がする。","color":"gray","italic":true}
item modify entity @s weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}
data modify storage neofunction:rubra d2.unlock set value 1b
playsound minecraft:block.iron_door.open block @a[distance=..24] ~ ~ ~ 1 0.6
tellraw @a[distance=..32] {"text":"鍵が回った。……壁に、昔の水守の言葉が刻まれている。「水は街のもの。分けよ、満たすな」","color":"#7FD8FF","italic":true}
function neofunction:system/world/ceresta/rubra/d2/water/apply
