# 命名：10_second
# 説明：低周期クロック
# 実行条件：10秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/10_second


# 内容
advancement revoke @a from neofunction:.clock/10s

# 10秒ごとに、プレイヤーの8メートル付近に特定タグの付いたエンティがいなければ、エリアタイトルを表示可能にするMarker:0b,
execute as @a at @s unless entity @e[distance=..8,tag=marked,type=armor_stand] run tag @s remove marked

#指定のタグを持つプレイヤーは10s毎に土のシールドを所持する
execute as @a[tag=playerdirtshield] at @s run function neofunction:system/adv/player_hurt_entity/1288

#プレイヤー発光自動化が有効な場合全プレイヤーを発光させる（将来的には購入可能なパッシブ型のスキルにしたい）
execute if score playerglow temp matches 1 run effect give @a minecraft:glowing 11 0 true


# 
kill @e[tag=del10s]

# skillclock
function neofunction:entity/skill/clock/10s

schedule clear neofunction:system/clock/10_second
schedule function neofunction:system/clock/10_second 10s