# 命名：get_entity
# 説明：Nameに進捗名を入れてマクロを実行すると対象モブにinteractedタグを付与
# >/function neofunction:system/adv/player_interacted_with_entity/*
# =/function neofunction:system/adv/player_interacted_with_entity/.get_entity

# 候補はモブ全部
tag @e[tag=mob,tag=UUIDchecked] add interacted

# 違うやつを消す
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={-=true}}] run tag @e[tag=interacted,tag=!UUID-] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={-=false}}] run tag @e[tag=interacted,tag=UUID-] remove interacted

$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={30=true}}] run tag @e[tag=interacted,tag=!UUID30] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={30=false}}] run tag @e[tag=interacted,tag=UUID30] remove interacted

$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={29=true}}] run tag @e[tag=interacted,tag=!UUID29] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={29=false}}] run tag @e[tag=interacted,tag=UUID29] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={28=true}}] run tag @e[tag=interacted,tag=!UUID28] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={28=false}}] run tag @e[tag=interacted,tag=UUID28] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={27=true}}] run tag @e[tag=interacted,tag=!UUID27] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={27=false}}] run tag @e[tag=interacted,tag=UUID27] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={26=true}}] run tag @e[tag=interacted,tag=!UUID26] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={26=false}}] run tag @e[tag=interacted,tag=UUID26] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={25=true}}] run tag @e[tag=interacted,tag=!UUID25] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={25=false}}] run tag @e[tag=interacted,tag=UUID25] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={24=true}}] run tag @e[tag=interacted,tag=!UUID24] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={24=false}}] run tag @e[tag=interacted,tag=UUID24] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={23=true}}] run tag @e[tag=interacted,tag=!UUID23] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={23=false}}] run tag @e[tag=interacted,tag=UUID23] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={22=true}}] run tag @e[tag=interacted,tag=!UUID22] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={22=false}}] run tag @e[tag=interacted,tag=UUID22] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={21=true}}] run tag @e[tag=interacted,tag=!UUID21] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={21=false}}] run tag @e[tag=interacted,tag=UUID21] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={20=true}}] run tag @e[tag=interacted,tag=!UUID20] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={20=false}}] run tag @e[tag=interacted,tag=UUID20] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={19=true}}] run tag @e[tag=interacted,tag=!UUID19] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={19=false}}] run tag @e[tag=interacted,tag=UUID19] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={18=true}}] run tag @e[tag=interacted,tag=!UUID18] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={18=false}}] run tag @e[tag=interacted,tag=UUID18] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={17=true}}] run tag @e[tag=interacted,tag=!UUID17] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={17=false}}] run tag @e[tag=interacted,tag=UUID17] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={16=true}}] run tag @e[tag=interacted,tag=!UUID16] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={16=false}}] run tag @e[tag=interacted,tag=UUID16] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={15=true}}] run tag @e[tag=interacted,tag=!UUID15] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={15=false}}] run tag @e[tag=interacted,tag=UUID15] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={14=true}}] run tag @e[tag=interacted,tag=!UUID14] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={14=false}}] run tag @e[tag=interacted,tag=UUID14] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={13=true}}] run tag @e[tag=interacted,tag=!UUID13] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={13=false}}] run tag @e[tag=interacted,tag=UUID13] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={12=true}}] run tag @e[tag=interacted,tag=!UUID12] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={12=false}}] run tag @e[tag=interacted,tag=UUID12] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={11=true}}] run tag @e[tag=interacted,tag=!UUID11] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={11=false}}] run tag @e[tag=interacted,tag=UUID11] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={10=true}}] run tag @e[tag=interacted,tag=!UUID10] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={10=false}}] run tag @e[tag=interacted,tag=UUID10] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={9=true}}] run tag @e[tag=interacted,tag=!UUID9] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={9=false}}] run tag @e[tag=interacted,tag=UUID9] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={8=true}}] run tag @e[tag=interacted,tag=!UUID8] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={8=false}}] run tag @e[tag=interacted,tag=UUID8] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={7=true}}] run tag @e[tag=interacted,tag=!UUID7] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={7=false}}] run tag @e[tag=interacted,tag=UUID7] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={6=true}}] run tag @e[tag=interacted,tag=!UUID6] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={6=false}}] run tag @e[tag=interacted,tag=UUID6] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={5=true}}] run tag @e[tag=interacted,tag=!UUID5] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={5=false}}] run tag @e[tag=interacted,tag=UUID5] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={4=true}}] run tag @e[tag=interacted,tag=!UUID4] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={4=false}}] run tag @e[tag=interacted,tag=UUID4] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={3=true}}] run tag @e[tag=interacted,tag=!UUID3] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={3=false}}] run tag @e[tag=interacted,tag=UUID3] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={2=true}}] run tag @e[tag=interacted,tag=!UUID2] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={2=false}}] run tag @e[tag=interacted,tag=UUID2] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={1=true}}] run tag @e[tag=interacted,tag=!UUID1] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={1=false}}] run tag @e[tag=interacted,tag=UUID1] remove interacted


$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={0=true}}] run tag @e[tag=interacted,tag=!UUID0] remove interacted
$execute if entity @s[advancements={neofunction:player_interacted_with_entity/$(Name)={0=false}}] run tag @e[tag=interacted,tag=UUID0] remove interacted

# 一応不具合用管理者通知入れとく
execute store result score #Calc temp if entity @e[tag=interacted]
# 倒した時にいちいち通知出すとうるさいので停止
#execute if score #Calc temp matches 0 run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象がいません","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/player_interacted_with_entity/.get_entity"}}}
execute if score #Calc temp matches 2.. run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象が複数存在します","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/player_interacted_with_entity/.get_entity"}}}
