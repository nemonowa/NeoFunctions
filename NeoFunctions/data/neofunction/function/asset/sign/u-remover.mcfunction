# 命名：着脱器
# 説明：装備させたアイテムのハイドフラグを消すアマスタ
# 説明：実行者：@e[type=armor_stand,limit=1,sort=nearest,distance=..4,tag=remover]
# 説明：https://discord.com/channels/802086247291158538/860823332235640842/1445347645752344626
# >
# =/function neofunction:asset/sign/u-remover


# 部位数に応じた修繕コスト計算（0 1 2 3 足　脚　胸　頭
execute if data entity @s equipment.feet.id run return run tellraw @a[distance=..8] ["",{"selector":"@s"},{"text":"＞ 着脱済みです"}]
execute if data entity @s equipment.legs.id run return run tellraw @a[distance=..8] ["",{"selector":"@s"},{"text":"＞ 着脱済みです"}]
execute if data entity @s equipment.chest.id run return run tellraw @a[distance=..8] ["",{"selector":"@s"},{"text":"＞ 着脱済みです"}]
execute if data entity @s equipment.head.id run return run tellraw @a[distance=..8] ["",{"selector":"@s"},{"text":"＞ 着脱済みです"}]

# 操作
item replace entity @s armor.head from entity @p[distance=..8] armor.head
item replace entity @s armor.chest from entity @p[distance=..8] armor.chest
item replace entity @s armor.legs from entity @p[distance=..8] armor.legs
item replace entity @s armor.feet from entity @p[distance=..8] armor.feet

item replace entity @p[distance=..8] armor.head with air
item replace entity @p[distance=..8] armor.chest with air
item replace entity @p[distance=..8] armor.legs with air
item replace entity @p[distance=..8] armor.feet with air

# 演出
playsound minecraft:block.beacon.activate record @a[distance=..8] ~ ~ ~ 2 1.5 1
execute as @s at @s run particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90

# デバッグ用：https://discord.com/channels/802086247291158538/860823332235640842/1445387147468083391
# tellraw @a {"entity":"@s","nbt":"{}"}

#/summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,Tags:["remover"],CustomName:'{"text":"۞-着脱器-۞","color":"light_purple","bold":true,"italic":false}'}
#/setblock 1334 128 1288 minecraft:birch_sign[rotation=8,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.arrow.hit_player record @a[distance=..16] ~ ~ ~ 1 2 1"},"color":"light_purple","italic":false,"text":"۞-着脱器-۞","underlined":true}','{"clickEvent":{"action":"run_command","value":"/effect give @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=remover] glowing 1 0"},"color":"black","text":"装備中のアイテムを"}','{"clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=remover] run function neofunction:asset/sign/u-remover"},"color":"black","text":"着脱する"}','{"clickEvent":{"action":"run_command","value":"./setblock ~ ~ ~ minecraft:air replace"},"color":"gold","text":"クレジット：0c","underlined":true}']},is_waxed:1b}