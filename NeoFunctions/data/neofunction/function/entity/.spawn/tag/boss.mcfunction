# 命名：boss
# 説明：エンティティ処理
# 説明：カスタムタグを持っている=カスタムエンティティ
# >/function neofunction:entity/1_spawn_check
# =/function neofunction:entity/.spawn/tag/boss



#ボス
team join boss @s[tag=!king]
tag @s[tag=boss] add elite
# data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:-1}]}
effect give @s minecraft:resistance infinite 2
#execute as @s[team=boss] at @s run title @a[distance=..64] actionbar [{"text":"戦場の空気が張り詰める...","color":"dark_red"}]

#ボスバー
execute as @s store result score @s HP run data get entity @s Health 1.0
execute as @s store result score @s DEF run data get entity @s AbsorptionAmount
scoreboard players operation @s HP += @s DEF

execute as @s run function neofunction:asset/bossbar/show

#ボス出現演出
execute as @s at @s run title @a[distance=..64] subtitle [{"text":"⚠","color":"dark_red","bold":true,"italic":false},{"text":" BOSS WARNING ","color":"red","bold":true,"italic":false},{"text":"⚠","color":"dark_red","bold":true,"italic":false}]
execute as @s at @s run title @a[distance=..64] title [{"text":"|","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"|","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"|","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"|","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":" ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","bold":true,"obfuscated":false},{"text":" ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"|","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"|","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"|","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":"|","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":true}]

#まさかの実行位置とってないのかよ事件簿（アーマー保護有効化処理）　
execute as @s at @s run execute if score bossArmorProtection temp matches 1 run execute as @a[distance=..64] at @s run function neofunction:player/armor/lock/set


