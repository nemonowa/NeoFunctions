# 命名：get_entity
# 説明：Nameに進捗名を入れてマクロを実行すると対象モブにhitタグを付与
# >/function neofunction:system/adv/player_hurt_entity/*
# =/function neofunction:system/adv/player_hurt_entity/.get_entity

# 候補はモブ全部
tag @e[tag=mob,tag=UUIDchecked] add hit

# 違うやつを消す
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={-=true}}] run tag @e[tag=hit,tag=!UUID-] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={-=false}}] run tag @e[tag=hit,tag=UUID-] remove hit

$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={30=true}}] run tag @e[tag=hit,tag=!UUID30] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={30=false}}] run tag @e[tag=hit,tag=UUID30] remove hit

$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={29=true}}] run tag @e[tag=hit,tag=!UUID29] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={29=false}}] run tag @e[tag=hit,tag=UUID29] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={28=true}}] run tag @e[tag=hit,tag=!UUID28] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={28=false}}] run tag @e[tag=hit,tag=UUID28] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={27=true}}] run tag @e[tag=hit,tag=!UUID27] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={27=false}}] run tag @e[tag=hit,tag=UUID27] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={26=true}}] run tag @e[tag=hit,tag=!UUID26] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={26=false}}] run tag @e[tag=hit,tag=UUID26] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={25=true}}] run tag @e[tag=hit,tag=!UUID25] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={25=false}}] run tag @e[tag=hit,tag=UUID25] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={24=true}}] run tag @e[tag=hit,tag=!UUID24] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={24=false}}] run tag @e[tag=hit,tag=UUID24] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={23=true}}] run tag @e[tag=hit,tag=!UUID23] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={23=false}}] run tag @e[tag=hit,tag=UUID23] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={22=true}}] run tag @e[tag=hit,tag=!UUID22] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={22=false}}] run tag @e[tag=hit,tag=UUID22] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={21=true}}] run tag @e[tag=hit,tag=!UUID21] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={21=false}}] run tag @e[tag=hit,tag=UUID21] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={20=true}}] run tag @e[tag=hit,tag=!UUID20] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={20=false}}] run tag @e[tag=hit,tag=UUID20] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={19=true}}] run tag @e[tag=hit,tag=!UUID19] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={19=false}}] run tag @e[tag=hit,tag=UUID19] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={18=true}}] run tag @e[tag=hit,tag=!UUID18] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={18=false}}] run tag @e[tag=hit,tag=UUID18] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={17=true}}] run tag @e[tag=hit,tag=!UUID17] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={17=false}}] run tag @e[tag=hit,tag=UUID17] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={16=true}}] run tag @e[tag=hit,tag=!UUID16] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={16=false}}] run tag @e[tag=hit,tag=UUID16] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={15=true}}] run tag @e[tag=hit,tag=!UUID15] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={15=false}}] run tag @e[tag=hit,tag=UUID15] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={14=true}}] run tag @e[tag=hit,tag=!UUID14] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={14=false}}] run tag @e[tag=hit,tag=UUID14] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={13=true}}] run tag @e[tag=hit,tag=!UUID13] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={13=false}}] run tag @e[tag=hit,tag=UUID13] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={12=true}}] run tag @e[tag=hit,tag=!UUID12] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={12=false}}] run tag @e[tag=hit,tag=UUID12] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={11=true}}] run tag @e[tag=hit,tag=!UUID11] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={11=false}}] run tag @e[tag=hit,tag=UUID11] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={10=true}}] run tag @e[tag=hit,tag=!UUID10] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={10=false}}] run tag @e[tag=hit,tag=UUID10] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={9=true}}] run tag @e[tag=hit,tag=!UUID9] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={9=false}}] run tag @e[tag=hit,tag=UUID9] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={8=true}}] run tag @e[tag=hit,tag=!UUID8] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={8=false}}] run tag @e[tag=hit,tag=UUID8] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={7=true}}] run tag @e[tag=hit,tag=!UUID7] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={7=false}}] run tag @e[tag=hit,tag=UUID7] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={6=true}}] run tag @e[tag=hit,tag=!UUID6] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={6=false}}] run tag @e[tag=hit,tag=UUID6] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={5=true}}] run tag @e[tag=hit,tag=!UUID5] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={5=false}}] run tag @e[tag=hit,tag=UUID5] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={4=true}}] run tag @e[tag=hit,tag=!UUID4] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={4=false}}] run tag @e[tag=hit,tag=UUID4] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={3=true}}] run tag @e[tag=hit,tag=!UUID3] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={3=false}}] run tag @e[tag=hit,tag=UUID3] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={2=true}}] run tag @e[tag=hit,tag=!UUID2] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={2=false}}] run tag @e[tag=hit,tag=UUID2] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={1=true}}] run tag @e[tag=hit,tag=!UUID1] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={1=false}}] run tag @e[tag=hit,tag=UUID1] remove hit


$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={0=true}}] run tag @e[tag=hit,tag=!UUID0] remove hit
$execute if entity @s[advancements={neofunction:player_hurt_entity/$(Name)={0=false}}] run tag @e[tag=hit,tag=UUID0] remove hit

# 一応不具合用管理者通知入れとく
execute store result score #Calc temp if entity @e[tag=hit]
# 倒した時にいちいち通知出すとうるさいので停止
#execute if score #Calc temp matches 0 run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象がいません","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/player_hurt_entity/.get_entity"}}}
execute if score #Calc temp matches 2.. run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象が複数存在します","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/player_hurt_entity/.get_entity"}}}
