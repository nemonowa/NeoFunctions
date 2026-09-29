# 命名：60_second
# 説明：低周期クロック
# 実行条件：一秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/60_second


# 内容
# 全列挙の武器追加効果CD終了通知　(いつかファンクションにまとめたい)
execute as @a[advancements={neofunction:player_hurt_entity/1328=true}] at @s run function neofunction:asset/tellraw/cdweapon
# 全列挙の防具追加効果CD終了通知　(いつかファンクションにまとめたい)
execute as @a[advancements={neofunction:tick/cmd/1293=true}] at @s run function neofunction:asset/tellraw/cdarmor
execute as @a[advancements={neofunction:tick/cmd/1297=true}] at @s run function neofunction:asset/tellraw/cdarmor

#
advancement revoke @a from neofunction:.clock/60s
execute as @a[scores={infection=1..}] run function neofunction:system/scoreboard/infection
execute as @e[type=minecraft:armor_stand,tag=60s] at @s run tp @s ~ ~6.0 ~

# 初回チュートリアル
#execute as @a[advancements={neoadvancement:nexus/root/1/0=false}] at @s unless dimension neodimension:nexus run function neofunction:asset/event/tutorial

#CAISUPPOORT
execute as @a[advancements={neoadvancement:nexus/root/1/0=false},tag=!tempcai0] at @s if entity @e[tag=cai,distance=..32] run function neofunction:asset/event/caisuport/0
execute as @a[advancements={neoadvancement:nexus/root/2/0=false,neoadvancement:nexus/root/1/0=true},tag=!tempcai1] at @s if entity @e[tag=cai,distance=..32] run function neofunction:asset/event/caisuport/1
execute as @a[advancements={neoadvancement:nexus/root/2/0=true,neoadvancement:nexus/root/1/0=true,neoadvancement:nexus/root/2/11=false},tag=!tempcai2] at @s run function neofunction:asset/event/caisuport/2

#カルマ値処理
execute as @a[scores={karman=1..}] run scoreboard players remove @s karman 1
execute as @a[scores={karman=..-1}] run scoreboard players add @s karman 1

# skillclock
function neofunction:entity/skill/clock/60s

# ランダムイベント処理
execute as 00000000-0000-0000-0000-000000000001 store result score random karman run random value 100..300
execute as 00000000-0000-0000-0000-000000000001 run scoreboard players operation @s karman += random karman
execute as 00000000-0000-0000-0000-000000000001 if entity @s[scores={karman=6000..}] as @a run function neofunction:asset/event/random
execute as 00000000-0000-0000-0000-000000000001 as @s[scores={karman=6000..}] run scoreboard players set @s karman 0

#レベル同期処理　もし有効だった場合
execute if score levelStatsSync temp matches -1 run function neofunction:system/levelstatssync/load

# del
kill @e[tag=del60s]

schedule clear neofunction:system/clock/60_second
schedule function neofunction:system/clock/60_second 60s