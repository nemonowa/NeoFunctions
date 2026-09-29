# 命名：フロッグボルト
# 説明：
# >/function neofunction:system/clock/3_second
# =/function neofunction:entity/skill/frog_bolt


# 説明：3s周期で10%の確率で雷を落とす
summon marker ~ ~ ~ {Tags:["FrogBolt"],data:{FrogBolt:59}}
tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"フロッグボルト","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"カエルの魔法で雷を落とす。"}]}},{"text":"を唱えた！"}]
playsound block.anvil.land hostile @a[distance=..10] ~ ~ ~ 100 0.5
function neofunction:entity/skill/frog_bolt_tick