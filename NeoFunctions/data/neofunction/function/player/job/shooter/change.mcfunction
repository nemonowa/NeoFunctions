# 命名：change
# 説明：射撃士官のスキルセットを全習得する
# 説明：レベルキャップは習得時ではなく発動時に「このスキルはLv99になるまで発動できない！」
# >/function neofunction:system/adv/inventory_changed/252
# >魂頭防具を装備したとき、消費して習得する
# =/function neofunction:player/job/shooter/change


function neofunction:player/job/revoke

# 習得するスキルセット
advancement grant @s only neoadvancement:neoskill/231
advancement grant @s only neoadvancement:neoskill/232
advancement grant @s only neoadvancement:neoskill/233
advancement grant @s only neoadvancement:neoskill/234
advancement grant @s only neoadvancement:neoskill/235
advancement grant @s only neoadvancement:neoskill/236
advancement grant @s only neoadvancement:neoskill/237
advancement grant @s only neoadvancement:neoskill/238
advancement grant @s only neoadvancement:neoskill/239

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
title @s title {"text":"You Are Now a SHOOTER","bold":true}




