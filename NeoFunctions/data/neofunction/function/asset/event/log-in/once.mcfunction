# 命名：once
# 説明：プレイヤーに初ログイン時に一回だけ実行される
# 説明：@s=[type=player]
# >/advancement grant @s only neofunction:tick/once
# =/function neofunction:asset/event/log-in/once


# 成分表示
stopsound @s
playsound minecraft:neo/mozell/banbard record @s ~ ~ ~ 1 1 1

# 追加ワールド用
execute as @s at @s align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {UUID:[I;0,0,0,7],NoGravity:1b,Marker:1b,Invisible:1b,CustomName:{"text":"虚空の接続点(初期リス)","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}}
execute as 0-0-0-0-7 run function neofunction:system/pos/save {id:66}
tellraw @a[gamemode=creative] [{"text":"初期リスが記録されました。"}]

# 基礎ステータス
tag @s remove lv0
tag @s add marked
execute as @s run team join white @s

# いろいろ
execute store result score version world run data get entity @s DataVersion
function neofunction:system/trigger/.all_trigger_enable

# 称号：未選択
data modify storage neofunction:name name set value '{"text":"未選択","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"説明：ここをクリックして称号を設定可能"}]}}'
function neofunction:asset/name/set
# 転移
execute in neodimension:nexus run tp @s 1280.0 128.000 1192.5 899.0 9
# function neofunction:system/pos/.macro with storage pos:63
# function neofunction:system/pos/.macro with storage pos:100
# function neofunction:asset/event/prologue
spawnpoint @s ~ ~ ~

# もしCAIがいない場合初期設定実行し戻り値を返す（ワールド初生成時はいても踏んでる）（読み込み遅延の問題らしい）execute unless entity 0-0-0-0-1 run 
execute unless score upper world matches 1.. run function neofunction:system/setting
function neofunction:system/setting/99_scoreboard_set_player
function neofunction:player/sp/percentage
