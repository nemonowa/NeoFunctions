# 命名：init
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/init

say 「岩鎧の加護、その重みを受けよ。」
item replace entity @s armor.chest with leather_chestplate[minecraft:dyed_color=16743472,minecraft:enchantments={"minecraft:feather_falling":4}] 1
item replace entity @s weapon.mainhand with carrot_on_a_stick[minecraft:custom_model_data={floats:[1286.0f]}] 1
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound block.rooted_dirt.step hostile @s ~ ~ ~ 1 0.5