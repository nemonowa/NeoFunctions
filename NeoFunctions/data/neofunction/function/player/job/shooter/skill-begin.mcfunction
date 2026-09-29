# 命名：転職処理
# 説明：
# >/function asset/skill/
# >/advancement revoke @s only neoadvancement:neoskill/220
# =/function neofunction:player/job/shooter/skill-begin


# 解除
advancement revoke @s only neoadvancement:neoskill/200
advancement revoke @s only neoadvancement:neoskill/210
# advancement revoke @s only neoadvancement:neoskill/220
advancement revoke @s only neoadvancement:neoskill/230
advancement revoke @s only neoadvancement:neoskill/240
advancement revoke @s only neoadvancement:neoskill/250

# 習得するスキルセット
advancement grant @s only neoadvancement:neoskill/220
advancement grant @s only neoadvancement:neoskill/221
advancement grant @s only neoadvancement:neoskill/222
advancement grant @s only neoadvancement:neoskill/223
advancement grant @s only neoadvancement:neoskill/224
advancement grant @s only neoadvancement:neoskill/225
advancement grant @s only neoadvancement:neoskill/226
advancement grant @s only neoadvancement:neoskill/227
advancement grant @s only neoadvancement:neoskill/228
advancement grant @s only neoadvancement:neoskill/229

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
title @s title {"text":"You Are Now a DRAGOON","bold":true}




