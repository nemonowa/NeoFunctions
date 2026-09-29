# 命名：init
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/init

say 「湧流の加護、その真価を知れ。」
execute positioned 1029 7 1765 run playsound entity.player.splash.high_speed hostile @a[distance=..32] ~ ~ ~ 10 0
item replace entity @s armor.chest with leather_chestplate[minecraft:dyed_color=2883576,minecraft:enchantments={"minecraft:projectile_protection":4}] 1
item replace entity @s weapon.mainhand with carrot_on_a_stick[minecraft:custom_model_data={floats:[1286.0f]}] 1
