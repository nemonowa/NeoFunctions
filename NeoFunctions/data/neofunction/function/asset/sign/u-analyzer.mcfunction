# 命名：解析器
# 説明：装備させたアイテムのハイドフラグを消すアマスタ
# 説明：実行者：@e[type=armor_stand,limit=1,sort=nearest,distance=..4,tag=analyzer]
# 説明：https://discord.com/channels/802086247291158538/860823332235640842/1445347645752344626
# >
# =/function neofunction:asset/sign/u-analyzer


# 代金
execute if score @p minedSpawner matches ..1 run return run tellraw @p [{"selector":"@e[limit=1,sort=nearest,type=armor_stand]"},{"text":"の稼働に必要なクレジットが足らない：","color":"white"},{"score":{"name":"@s","objective":"minedSpawner"},"color":"gold","bold":true}]

## 部位数に応じた修繕コスト計算（0 1 2 3 足　脚　胸　頭
scoreboard players set 解析器コスト temp 0

execute if data entity @s equipment.mainhand.id run scoreboard players add 解析器コスト temp 1
execute if data entity @s equipment.offhand.id run scoreboard players add 解析器コスト temp 1
execute if data entity @s equipment.feet.id run scoreboard players add 解析器コスト temp 1
execute if data entity @s equipment.legs.id run scoreboard players add 解析器コスト temp 1
execute if data entity @s equipment.chest.id run scoreboard players add 解析器コスト temp 1
execute if data entity @s equipment.head.id run scoreboard players add 解析器コスト temp 1

scoreboard players operation @p minedSpawner -= 解析器コスト temp

# 操作
# 【変更：2026-09-27 26.3対応】HideFlags は tooltip_display に、HandItems[]/ArmorItems[] は部位ごとの equipment に変わったため、部位ごとに tooltip_display を消す（＝すべて表示）
data remove entity @s equipment.mainhand.components."minecraft:tooltip_display"
data remove entity @s equipment.offhand.components."minecraft:tooltip_display"
data remove entity @s equipment.feet.components."minecraft:tooltip_display"
data remove entity @s equipment.legs.components."minecraft:tooltip_display"
data remove entity @s equipment.chest.components."minecraft:tooltip_display"
data remove entity @s equipment.head.components."minecraft:tooltip_display"
item modify entity @s weapon.mainhand neofunction:set_lore/analyzer

# 演出
playsound minecraft:block.beacon.activate record @a[distance=..8] ~ ~ ~ 2 1.5 1
execute as @s at @s run particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90

# 通知
tellraw @a[distance=..8] ["",{"selector":"@s"},{"text":"＞クレジット："},{"score":{"name":"解析器コスト","objective":"temp"},"color":"gold","bold":true},{"text":"消費して装備品を解析しました！"}]

# デバッグ用：https://discord.com/channels/802086247291158538/860823332235640842/1445387147468083391
# tellraw @a {"entity":"@s","nbt":"{}"}
#/summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,Tags:["analyzer"],CustomName:'{"text":"۞-解析器-۞","color":"light_purple","bold":true,"italic":false}'}
#/setblock ~ ~ ~ minecraft:birch_sign[rotation=0,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.arrow.hit_player record @a[distance=..16] ~ ~ ~ 1 2 1"},"color":"light_purple","italic":false,"text":"۞-解析器-۞","underlined":true}','{"clickEvent":{"action":"run_command","value":"/effect give @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=analyzer] glowing 1 0"},"color":"black","text":"装備させたアイテムの"}','{"clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=analyzer] run function neofunction:asset/sign/u-analyzer"},"color":"black","text":"全貌を表示する"}','{"clickEvent":{"action":"run_command","value":"./setblock ~ ~ ~ minecraft:air replace"},"color":"gold","text":"クレジット：0c","underlined":true}']},is_waxed:1b}