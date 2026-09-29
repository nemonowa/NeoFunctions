# 命名：boss
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_killed_entity/boss
# =/function neofunction:system/adv/player_killed_entity/boss

## 内容


playsound ui.toast.challenge_complete record @a[distance=..16] ~ ~ ~ 1 1.5

execute as @s at @s run tellraw @a [{"text":"＊","color":"#D8DE2A","bold":false},{"selector":"@s","color":"gold","bold":true},{"text":"がBOSSを討伐した！","color":"#D8DE2A","bold":false}]

title @a[distance=..64] subtitle [{"text":"꧁","color":"gold","bold":true,"italic":false},{"text":"MISSION COMPLELE","color":"#D8DE2A"},{"text":"꧂"}]
title @a[distance=..64] title [{"text":"|||","color":"gold","bold":true,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":" ボス討伐完了 ","color":"#D8DE2A","obfuscated":false},{"text":"|||"}]

#ボスバー
function neofunction:asset/bossbar/hide
#bossbar set world visible true

function neofunction:player/armor/lock/unset

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_killed_entity/boss