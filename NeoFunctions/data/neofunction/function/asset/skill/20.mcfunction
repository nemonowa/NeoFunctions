# 命名：コントロール・ウェザー
# 説明：トリガーすると、天候が晴に、shiftしている場合は雨に改変される。SP50消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/20



# 内容：
weather clear
execute as @s[scores={sneak_time=1..}] run weather rain

# 通知
tellraw @a [{"selector":"@s","color":"aqua","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"天候が晴に、shiftしている場合は雨に改変される。"}]}},{"text":"の魔法で天候が変わった！"}]
title @s title [{"text":"꧁ ","color":"blue","bold":true,"italic":false,"underlined":false},{"text":" 天候改変 ","color":"aqua","bold":true,"italic":false,"underlined":true},{"text":" ꧂"}]

# 演出
playsound minecraft:ambient.basalt_deltas.mood record @a[distance=..128] ~ ~ ~ 3 1 1
particle minecraft:end_rod ~ ~5 ~ 5 5 5 0 1000 normal
particle minecraft:falling_dust{block_state:"minecraft:lapis_block"} ~ ~8 ~ 15 1 15 0 3000 normal
particle minecraft:falling_water ~ ~8 ~ 15 1 15 0 3000 normal


# 消費SP
scoreboard players remove @s SP 50