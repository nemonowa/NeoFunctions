# 命名：鳥瞰【ホークアイ】鳥観
# 説明：トリガーすると、ホークアイ状態になる。SP30消費。
# 説明：GM変更はneofunction:system/adv/effects_changed/id30：アクティブスキル
# 説明：https://discord.com/channels/802086247291158538/860823332235640842/1288069713460461610
# >
# =/function neofunction:asset/skill/9


# 内容
tellraw @s[tag=argonaute] [{"text":"tagを外して実行してください。"}]
effect give @s minecraft:invisibility 6 2 true
execute summon minecraft:marker run spectate @s @p

schedule function neofunction:asset/skill/9-1 110t append

# 消費SP
scoreboard players remove @s SP 30