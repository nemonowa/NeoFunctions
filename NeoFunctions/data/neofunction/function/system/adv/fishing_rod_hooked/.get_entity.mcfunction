# 命名：get_entity
# 説明：Nameに進捗名を入れてマクロを実行すると対象モブにhookedタグを付与
# >/function neofunction:system/adv/fishing_rod_hooked/*
# =/function neofunction:system/adv/fishing_rod_hooked/.get_entity

# 候補はモブ全部
tag @e[tag=mob,tag=UUIDchecked] add hooked
# 違うやつを消す
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={-=true}}] run tag @e[tag=hooked,tag=!UUID-] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={-=false}}] run tag @e[tag=hooked,tag=UUID-] remove hooked

$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={30=true}}] run tag @e[tag=hooked,tag=!UUID30] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={30=false}}] run tag @e[tag=hooked,tag=UUID30] remove hooked

$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={29=true}}] run tag @e[tag=hooked,tag=!UUID29] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={29=false}}] run tag @e[tag=hooked,tag=UUID29] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={28=true}}] run tag @e[tag=hooked,tag=!UUID28] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={28=false}}] run tag @e[tag=hooked,tag=UUID28] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={27=true}}] run tag @e[tag=hooked,tag=!UUID27] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={27=false}}] run tag @e[tag=hooked,tag=UUID27] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={26=true}}] run tag @e[tag=hooked,tag=!UUID26] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={26=false}}] run tag @e[tag=hooked,tag=UUID26] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={25=true}}] run tag @e[tag=hooked,tag=!UUID25] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={25=false}}] run tag @e[tag=hooked,tag=UUID25] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={24=true}}] run tag @e[tag=hooked,tag=!UUID24] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={24=false}}] run tag @e[tag=hooked,tag=UUID24] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={23=true}}] run tag @e[tag=hooked,tag=!UUID23] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={23=false}}] run tag @e[tag=hooked,tag=UUID23] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={22=true}}] run tag @e[tag=hooked,tag=!UUID22] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={22=false}}] run tag @e[tag=hooked,tag=UUID22] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={21=true}}] run tag @e[tag=hooked,tag=!UUID21] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={21=false}}] run tag @e[tag=hooked,tag=UUID21] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={20=true}}] run tag @e[tag=hooked,tag=!UUID20] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={20=false}}] run tag @e[tag=hooked,tag=UUID20] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={19=true}}] run tag @e[tag=hooked,tag=!UUID19] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={19=false}}] run tag @e[tag=hooked,tag=UUID19] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={18=true}}] run tag @e[tag=hooked,tag=!UUID18] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={18=false}}] run tag @e[tag=hooked,tag=UUID18] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={17=true}}] run tag @e[tag=hooked,tag=!UUID17] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={17=false}}] run tag @e[tag=hooked,tag=UUID17] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={16=true}}] run tag @e[tag=hooked,tag=!UUID16] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={16=false}}] run tag @e[tag=hooked,tag=UUID16] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={15=true}}] run tag @e[tag=hooked,tag=!UUID15] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={15=false}}] run tag @e[tag=hooked,tag=UUID15] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={14=true}}] run tag @e[tag=hooked,tag=!UUID14] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={14=false}}] run tag @e[tag=hooked,tag=UUID14] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={13=true}}] run tag @e[tag=hooked,tag=!UUID13] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={13=false}}] run tag @e[tag=hooked,tag=UUID13] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={12=true}}] run tag @e[tag=hooked,tag=!UUID12] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={12=false}}] run tag @e[tag=hooked,tag=UUID12] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={11=true}}] run tag @e[tag=hooked,tag=!UUID11] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={11=false}}] run tag @e[tag=hooked,tag=UUID11] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={10=true}}] run tag @e[tag=hooked,tag=!UUID10] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={10=false}}] run tag @e[tag=hooked,tag=UUID10] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={9=true}}] run tag @e[tag=hooked,tag=!UUID9] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={9=false}}] run tag @e[tag=hooked,tag=UUID9] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={8=true}}] run tag @e[tag=hooked,tag=!UUID8] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={8=false}}] run tag @e[tag=hooked,tag=UUID8] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={7=true}}] run tag @e[tag=hooked,tag=!UUID7] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={7=false}}] run tag @e[tag=hooked,tag=UUID7] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={6=true}}] run tag @e[tag=hooked,tag=!UUID6] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={6=false}}] run tag @e[tag=hooked,tag=UUID6] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={5=true}}] run tag @e[tag=hooked,tag=!UUID5] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={5=false}}] run tag @e[tag=hooked,tag=UUID5] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={4=true}}] run tag @e[tag=hooked,tag=!UUID4] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={4=false}}] run tag @e[tag=hooked,tag=UUID4] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={3=true}}] run tag @e[tag=hooked,tag=!UUID3] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={3=false}}] run tag @e[tag=hooked,tag=UUID3] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={2=true}}] run tag @e[tag=hooked,tag=!UUID2] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={2=false}}] run tag @e[tag=hooked,tag=UUID2] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={1=true}}] run tag @e[tag=hooked,tag=!UUID1] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={1=false}}] run tag @e[tag=hooked,tag=UUID1] remove hooked


$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={0=true}}] run tag @e[tag=hooked,tag=!UUID0] remove hooked
$execute if entity @s[advancements={neofunction:fishing_rod_hooked/$(Name)={0=false}}] run tag @e[tag=hooked,tag=UUID0] remove hooked

# 一応不具合用管理者通知入れとく
execute store result score #Calc temp if entity @e[tag=hooked]
# 倒した時にいちいち通知出すとうるさいので停止
#execute if score #Calc temp matches 0 run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象がいません","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/fishing_rod_hooked/.get_entity"}}}
execute if score #Calc temp matches 2.. run tellraw @a[gamemode=creative] {"text": "[管理者通知] 対象が複数存在します","color": "red",hover_event: {"action": "show_text",value: {"text": ">neofunction:system/adv/fishing_rod_hooked/.get_entity"}}}
