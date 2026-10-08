# 命名：alcove
# 説明：【追加：2026-10-08 ルブラ編】三の層のガラン・ルーの札の窪み。札（1869）を手に持って右クリックすると置ける。置くと砂の亡者が湧かなくなる（寄り道）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d1/alcove

# 内容
execute if data storage neofunction:rubra d1{galan:1b} run return run tellraw @s {"text":"窪みには、ガラン・ルーの札が静かに置かれている。","color":"gray","italic":true}
execute unless items entity @s weapon.mainhand minecraft:brick[minecraft:custom_model_data={floats:[1869.0f]}] run return run tellraw @s {"text":"壁の窪み。鉱夫の札を置くための場所のようだ。","color":"gray","italic":true}
item modify entity @s weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}
data modify storage neofunction:rubra d1.galan set value 1b
execute as @e[type=item_display,tag=rubra_alcove_disp] run data merge entity @s {item:{id:"minecraft:brick",count:1,components:{"minecraft:custom_model_data":{floats:[1869.0f]}}}}
# 近くの砂の亡者が、眠るように砂へ還る
execute as @e[type=husk,tag=rubra_sanddead,distance=..48] at @s run particle minecraft:falling_dust{block_state:"minecraft:sand"} ~ ~1 ~ 0.3 0.8 0.3 0 30 normal
execute as @e[type=husk,tag=rubra_sanddead,distance=..48] run tag @s add del
playsound minecraft:block.sand.fall ambient @a[distance=..24] ~ ~ ~ 1 0.6
tellraw @a[distance=..24] [{"text":"<","color":"white"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「……ちゃんと、眠ってなかったんですね。おやすみなさい、ガランさん」","color":"white"}]
