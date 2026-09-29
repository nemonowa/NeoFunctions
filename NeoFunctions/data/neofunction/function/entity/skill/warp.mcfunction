# 命名：ワープ処理
# 説明：
# >/function neofunction:clock/3_second
# =/function neofunction:entity/skill/warp


# 説明：3s周期で30%の確率でプレイヤー座標に転移する。
tp @p[gamemode=!spectator]
effect give @s glowing 1 1
tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"ワープ","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"99m以内の近くのプレイヤーに確率でワープする。"}]}},{"text":"した！"}]