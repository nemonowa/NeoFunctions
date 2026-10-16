# 命名：skylantern_move
# 説明：灯籠 1 つ：少し回りながら 0.12 マス昇る（向きを 1.5 度ずつ回して前へ 0.02 マス＝ゆるい螺旋）。4 tick ごとに火の粉。y150 より上で消える
# 実行条件：実行者・実行位置 灯籠（item_display、タグ rubra_skyl）
# >/function neofunction:system/world/ceresta/rubra/fin/skylantern_tick
# =/function neofunction:system/world/ceresta/rubra/fin/skylantern_move

# 内容
tp @s ^ ^0.12 ^0.02 ~1.5 ~
execute if score #sl_m temp matches 0 run particle minecraft:small_flame ~ ~0.3 ~ 0.05 0.05 0.05 0.005 1 normal
execute store result score #sl_y temp run data get entity @s Pos[1]
execute if score #sl_y temp matches 150.. run kill @s
