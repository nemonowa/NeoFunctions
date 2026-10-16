# 命名：forge_apply
# 説明：素材の数を数え、足りれば使って、メインハンドの道具を強化後の道具に取り替える
# 実行条件：実行者 プレイヤー。引数 to・m1・n1・m2・n2・need（強化の表の 1 行）
# >/function neofunction:system/world/ceresta/rubra/mine/forge_match
# =/function neofunction:system/world/ceresta/rubra/mine/forge_apply

# 内容
$scoreboard players set #fg_n1 temp $(n1)
$scoreboard players set #fg_n2 temp $(n2)
$execute store result score #fg_h1 temp run clear @s *[minecraft:custom_model_data={floats:[$(m1).0f]}] 0
$execute store result score #fg_h2 temp run clear @s *[minecraft:custom_model_data={floats:[$(m2).0f]}] 0
$execute if score #fg_h1 temp < #fg_n1 temp run return run tellraw @s [{"text":"素材が足りない。必要：","color":"#E0603A"},{"text":"$(need)","color":"white"}]
$execute if score #fg_h2 temp < #fg_n2 temp run return run tellraw @s [{"text":"素材が足りない。必要：","color":"#E0603A"},{"text":"$(need)","color":"white"}]
$clear @s *[minecraft:custom_model_data={floats:[$(m1).0f]}] $(n1)
$clear @s *[minecraft:custom_model_data={floats:[$(m2).0f]}] $(n2)
item replace entity @s weapon.mainhand with minecraft:air
$loot replace entity @s weapon.mainhand loot neofunction:item/$(to)
playsound minecraft:block.anvil.use block @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:block.smithing_table.use block @a[distance=..16] ~ ~ ~ 1 1.0
execute as @e[type=interaction,tag=rubra_forge,distance=..8,limit=1,sort=nearest] at @s run particle minecraft:lava ~ ~1 ~ 0.3 0.2 0.3 0 12 normal
function neofunction:system/world/ceresta/rubra/mine/hand
tellraw @s [{"text":"星鍛冶の金床が赤く光った。手の中の道具が、","color":"#E8B060"},{"nbt":"hand.components.\"minecraft:custom_name\"","storage":"neofunction:rubra","interpret":true},{"text":"に生まれ変わった。","color":"#E8B060"}]
