# 命名：6
# 説明：進捗達成時
# >/function neofunction:consume_item/849
# =/function neofunction:system/adv/consume_item/849/6

# 内容：
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「何度もやり直して結局ここに戻った」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「望んだものはなかったが、失うものもなかった」"}]
tellraw @a [{"text":"<","color":"dark_red","italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"転生リンゴはもういらない"}]}},{"selector":"@s","color":"dark_red"},{"text":"> 「もう何者にもならず、自分で歩いていこう、そう決めた」"}]

effect clear @s



