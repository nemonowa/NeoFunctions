# 命名：init
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/fire/init

say 「臨界の加護、その極致を示そう。」
item replace entity @s[tag=ekiriburiamu] armor.chest with leather_chestplate[minecraft:dyed_color=16711680,minecraft:enchantments={"minecraft:fire_protection":4}] 1
item replace entity @e[limit=1,tag=ekiriburiamu] weapon.mainhand with carrot_on_a_stick[minecraft:custom_model_data={floats:[1284.0f]}] 1
summon area_effect_cloud ~ 8 ~ {custom_particle:{type:"minecraft:flame"},RadiusPerTick:0.1f,Duration:200,Radius:0.51f,Tags:["ekiriFinalAEC"]}

