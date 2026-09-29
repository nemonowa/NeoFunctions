# 命名：ワープ処理
# 説明：
# >/function neofunction:clock/3_second
# =/function neofunction:entity/skill/frogcome


# 説明：3s周期で10%の確率で周囲のカエルを呼び寄せる
tp @e[type=frog,distance=..16] @s
tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"カモンフロッグ","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"周囲16m以内のカエルを招集する"}]}},{"text":"を唱えた！"}]