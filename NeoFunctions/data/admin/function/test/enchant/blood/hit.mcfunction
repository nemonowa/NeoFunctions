# 命名：hit
# 説明：血盟（試作）。攻撃を当てるたびに血の印を 1 つためる（最大 5）。5 つたまった状態で当てると解放
# 実行条件：攻撃を当てたプレイヤー（エンチャントの run_function から）
# >/enchantment neofunction:test/blood
# =/function admin:test/enchant/blood/hit


# 内容
scoreboard objectives add neo.blood dummy
scoreboard objectives add neo.blood_t dummy
scoreboard players set @s neo.blood_t 100
execute if score @s neo.blood matches 5.. run return run function admin:test/enchant/blood/nova
scoreboard players add @s neo.blood 1
particle minecraft:dust{color:[0.7,0.0,0.0],scale:1.0} ~ ~1 ~ 0.4 0.5 0.4 0 8
playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 0.5 1.5
function admin:test/enchant/blood/show
