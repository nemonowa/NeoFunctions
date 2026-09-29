# 命名：コントロール・タイム
# 説明：トリガーすると、昼夜が入れ替わる。SP50消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/21


# 内容：
time of minecraft:overworld add 6000t


# 通知
tellraw @a [{"selector":"@s","color":"aqua","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"/time add 6000t"}]}},{"text":"の魔法で昼夜が変わった！"}]
title @s title [{"text":"꧁ ","color":"dark_purple","bold":true,"italic":false,"underlined":false},{"text":" 時間改変 ","color":"light_purple","bold":true,"italic":false,"underlined":true},{"text":" ꧂"}]


# 演出
playsound minecraft:ambient.basalt_deltas.mood record @a[distance=..128] ~ ~ ~ 3 1 1
particle minecraft:end_rod ~ ~5 ~ 5 5 5 0 1000 normal
particle minecraft:falling_dust{block_state:"minecraft:amethyst_block"} ~ ~8 ~ 15 1 15 0 3000 normal
particle minecraft:falling_obsidian_tear ~ ~8 ~ 15 1 15 0 3000 normal

# 消費SP
scoreboard players remove @s SP 50