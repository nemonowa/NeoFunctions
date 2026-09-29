# 命名：get_entity
# 説明：Nameに進捗名を入れてマクロを実行すると対象モブにlookedタグを付与
# >/function neofunction:system/adv/tick/looking_at/*
# =/function neofunction:system/adv/tick/looking_at/.get_entity

# 候補はモブ全部
tag @e[tag=mob,tag=UUIDchecked] add looked

# 違うやつを消す
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={-=true}}] run tag @e[tag=looked,tag=!UUID-] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={-=false}}] run tag @e[tag=looked,tag=UUID-] remove looked

$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={30=true}}] run tag @e[tag=looked,tag=!UUID30] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={30=false}}] run tag @e[tag=looked,tag=UUID30] remove looked

$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={29=true}}] run tag @e[tag=looked,tag=!UUID29] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={29=false}}] run tag @e[tag=looked,tag=UUID29] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={28=true}}] run tag @e[tag=looked,tag=!UUID28] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={28=false}}] run tag @e[tag=looked,tag=UUID28] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={27=true}}] run tag @e[tag=looked,tag=!UUID27] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={27=false}}] run tag @e[tag=looked,tag=UUID27] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={26=true}}] run tag @e[tag=looked,tag=!UUID26] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={26=false}}] run tag @e[tag=looked,tag=UUID26] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={25=true}}] run tag @e[tag=looked,tag=!UUID25] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={25=false}}] run tag @e[tag=looked,tag=UUID25] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={24=true}}] run tag @e[tag=looked,tag=!UUID24] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={24=false}}] run tag @e[tag=looked,tag=UUID24] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={23=true}}] run tag @e[tag=looked,tag=!UUID23] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={23=false}}] run tag @e[tag=looked,tag=UUID23] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={22=true}}] run tag @e[tag=looked,tag=!UUID22] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={22=false}}] run tag @e[tag=looked,tag=UUID22] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={21=true}}] run tag @e[tag=looked,tag=!UUID21] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={21=false}}] run tag @e[tag=looked,tag=UUID21] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={20=true}}] run tag @e[tag=looked,tag=!UUID20] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={20=false}}] run tag @e[tag=looked,tag=UUID20] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={19=true}}] run tag @e[tag=looked,tag=!UUID19] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={19=false}}] run tag @e[tag=looked,tag=UUID19] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={18=true}}] run tag @e[tag=looked,tag=!UUID18] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={18=false}}] run tag @e[tag=looked,tag=UUID18] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={17=true}}] run tag @e[tag=looked,tag=!UUID17] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={17=false}}] run tag @e[tag=looked,tag=UUID17] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={16=true}}] run tag @e[tag=looked,tag=!UUID16] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={16=false}}] run tag @e[tag=looked,tag=UUID16] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={15=true}}] run tag @e[tag=looked,tag=!UUID15] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={15=false}}] run tag @e[tag=looked,tag=UUID15] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={14=true}}] run tag @e[tag=looked,tag=!UUID14] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={14=false}}] run tag @e[tag=looked,tag=UUID14] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={13=true}}] run tag @e[tag=looked,tag=!UUID13] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={13=false}}] run tag @e[tag=looked,tag=UUID13] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={12=true}}] run tag @e[tag=looked,tag=!UUID12] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={12=false}}] run tag @e[tag=looked,tag=UUID12] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={11=true}}] run tag @e[tag=looked,tag=!UUID11] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={11=false}}] run tag @e[tag=looked,tag=UUID11] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={10=true}}] run tag @e[tag=looked,tag=!UUID10] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={10=false}}] run tag @e[tag=looked,tag=UUID10] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={9=true}}] run tag @e[tag=looked,tag=!UUID9] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={9=false}}] run tag @e[tag=looked,tag=UUID9] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={8=true}}] run tag @e[tag=looked,tag=!UUID8] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={8=false}}] run tag @e[tag=looked,tag=UUID8] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={7=true}}] run tag @e[tag=looked,tag=!UUID7] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={7=false}}] run tag @e[tag=looked,tag=UUID7] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={6=true}}] run tag @e[tag=looked,tag=!UUID6] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={6=false}}] run tag @e[tag=looked,tag=UUID6] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={5=true}}] run tag @e[tag=looked,tag=!UUID5] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={5=false}}] run tag @e[tag=looked,tag=UUID5] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={4=true}}] run tag @e[tag=looked,tag=!UUID4] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={4=false}}] run tag @e[tag=looked,tag=UUID4] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={3=true}}] run tag @e[tag=looked,tag=!UUID3] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={3=false}}] run tag @e[tag=looked,tag=UUID3] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={2=true}}] run tag @e[tag=looked,tag=!UUID2] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={2=false}}] run tag @e[tag=looked,tag=UUID2] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={1=true}}] run tag @e[tag=looked,tag=!UUID1] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={1=false}}] run tag @e[tag=looked,tag=UUID1] remove looked


$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={0=true}}] run tag @e[tag=looked,tag=!UUID0] remove looked
$execute if entity @s[advancements={neofunction:tick/looking_at/$(Name)={0=false}}] run tag @e[tag=looked,tag=UUID0] remove looked

# 一応不具合用管理者通知入れとく
execute store result score #Calc temp if entity @e[tag=looked]
# 倒した時にいちいち通知出すとうるさいので停止
#execute if score #Calc temp matches 0 run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象がいません","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/tick/looking_at/.get_entity"}}}

execute if score #Calc temp matches 2.. run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象が複数存在します","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/tick/looking_at/.get_entity"}}}
