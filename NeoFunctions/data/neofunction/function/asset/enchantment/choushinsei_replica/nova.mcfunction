# 命名：nova
# 説明：小さな超新星（星核鎧の写し）：自分を中心に半径 6 の光が弾ける。敵（タグ enemy）に 10 ダメージ、自分は 2 秒の耐性。10 秒（200 tick）待ち
# 実行条件：実行者・実行位置 写しの鎧を着たプレイヤー
# >/function neofunction:asset/enchantment/choushinsei_replica/charge
# =/function neofunction:asset/enchantment/choushinsei_replica/nova

# 内容
scoreboard players set @s neo.nk_st -200
particle minecraft:flash{color:[0.8,0.95,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.35 120 force
particle minecraft:dust{color:[0.6,0.85,1.0],scale:2.0} ~ ~1 ~ 3 1 3 0 60 force
playsound minecraft:block.beacon.power_select player @a[distance=..32] ~ ~ ~ 1.5 1.4
playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..32] ~ ~ ~ 1.2 1.0
effect give @s minecraft:resistance 2 2 true
execute as @e[tag=enemy,type=!player,distance=..6] run damage @s 10 minecraft:player_explosion by @p
title @s actionbar {"text":"小さな超新星","color":"aqua","bold":true}
