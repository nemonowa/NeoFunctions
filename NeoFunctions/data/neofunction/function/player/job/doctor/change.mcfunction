# 命名：医工士官の正装
# 説明：レベルキャップは習得時ではなく発動時に「このスキルはLv99になるまで発動できない！」
# >/function neofunction:system/adv/inventory_changed/251
# >魂頭防具を装備したとき、消費して習得する
# =/function neofunction:player/job/doctor/change

#職業スキル剥奪

function neofunction:player/job/revoke
function neofunction:system/scoreboard/skillreset

# 習得するスキルセット
execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/240
execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/241
execute as @s[scores={LVL=10..}] run advancement grant @s only neoadvancement:neoskill/242
execute as @s[scores={LVL=10..}] run advancement grant @s only neoadvancement:neoskill/243
execute as @s[scores={LVL=10..}] run advancement grant @s only neoadvancement:neoskill/244
execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/245
execute as @s[scores={LVL=20..}] run advancement grant @s only neoadvancement:neoskill/246
execute as @s[scores={LVL=20..}] run advancement grant @s only neoadvancement:neoskill/247
execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/248
execute as @s[scores={LVL=40..}] run advancement grant @s only neoadvancement:neoskill/249


# 消費
item replace entity @s armor.head with air

# スキルセット習得【インストール】完了演出
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.6 1.5
playsound minecraft:item.totem.use master @s ~ ~ ~ 0.4 0.9

particle minecraft:portal ~ ~1 ~ 0.4 0.6 0.4 0.2 120 force
particle minecraft:enchant ~ ~1 ~ 0.3 0.8 0.3 0.1 80 force
particle minecraft:end_rod ~ ~1 ~ 0.2 0.6 0.2 0.05 40 force

title @s subtitle {"text":"Skills Have Been Installed"}
title @s title {"text":"You Are Now a DOCTOR","bold":true}


# give @p minecraft:player_head[minecraft:attribute_modifiers=[{type:"armor",id:"neofunction:b7170086-a3e6-424e-bfde-14ac4d2b1c23",amount:5,operation:"add_value",slot:"head"},{type:"armor_toughness",id:"neofunction:1765e717-7c0a-4a99-9959-567e49f758b3",amount:5,operation:"add_value",slot:"head"}],minecraft:enchantments={"minecraft:protection":5},minecraft:profile={id:[I;-1825724363,-23962704,-1266053110,174960319],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThjMjQ1ZmYxYTZhMTg3ZmQ4ZjcwMzEzZDIyYWE3YjFiOWQ2OGFhODIyNDNjMjNiYzY1ZDFiZjk5MDRjNTQxNiJ9fX0="}]},minecraft:lore=[{"text":"ナイトの軌跡を継承する追体験装置","color":"white","bold":false,"italic":false},[{"text":"着用すると全ての時空の","color":"white","bold":false,"italic":false},{"text":"白刃騎士","color":"light_purple","bold":false,"italic":false},{"text":"と繋がり","color":"white","bold":false,"italic":false}],{"text":"その極意を識ることができる。","color":"white","bold":false,"italic":false}],minecraft:custom_name={"text":"白刃騎士の正装","color":"light_purple","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},minecraft:custom_model_data={floats:[249.0f]},minecraft:custom_data={rare:["st"]}] 1


