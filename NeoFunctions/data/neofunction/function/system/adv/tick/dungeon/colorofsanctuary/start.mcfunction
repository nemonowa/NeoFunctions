# 命名：start
# 説明：色彩の神殿入場処理
# >/neo
# =/function neofunction:system/adv/tick/dungeon/colorofsanctuary/start


#内容！

#ダンジョンに誰か挑戦しているかチェックする
#tag=color1,color2,color3を持っている人がいるなら喋って終了
effect give @s minecraft:darkness 5

# unless @s[tag=!A,tag=!B]は(if entity @s[tag=A]またはif entity @s[tag=B])と同値
execute as @a unless entity @s[tag=!color1,tag=!color2,tag=!color3] run return run tellraw @s [{"text":"この試練は挑戦されています。攻略されるまで待機してください。"}]

function neofunction:system/adv/tick/dungeon/colorofsanctuary/reset1