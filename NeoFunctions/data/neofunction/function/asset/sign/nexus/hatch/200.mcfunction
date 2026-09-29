# 命名：200
# 説明：チュートリアル看板処理
# >/function neofunction:system/trigger/code
# >/function neofunction:system/adv/tick/looking_at/cai
# =/function neofunction:asset/sign/nexus/hatch/200


# 内容
execute unless dimension neodimension:nexus run return run tellraw @s {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}

execute in neodimension:nexus run tp @s 1280.0 110.00 1305.0 -3600.0 0.0
# tp @s ~ ~ ~-14 ~ ~

# スコアがなければ付与
execute unless score star EXP matches 1.. run item replace entity @s enderchest.13 from entity @e[tag=world,limit=1] container.0
#execute unless entity @s[scores={EXP=1..}] run scoreboard players set @s EXP 1

# 進捗リセット
# advancement revoke @s only neoadvancement:nexus/root/1/0
# advancement revoke @s only neoadvancement:nexus/root/1/1
# advancement revoke @s only neoadvancement:nexus/root/1/2
# advancement revoke @s only neoadvancement:nexus/root/1/3
# advancement revoke @s only neoadvancement:nexus/root/1/4
# advancement revoke @s only neoadvancement:nexus/root/1/5
# advancement revoke @s only neoadvancement:nexus/root/1/6
# advancement revoke @s only neoadvancement:nexus/root/1/7
# advancement revoke @s only neoadvancement:nexus/root/1/8
# advancement revoke @s only neoadvancement:nexus/root/1/9

# 次の部屋のリセット処理
execute in neodimension:nexus run fill 1281 112 1325 1278 111 1325 white_stained_glass

