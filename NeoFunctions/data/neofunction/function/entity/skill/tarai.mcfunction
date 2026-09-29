# 命名：tarai
# 説明：伝説のたらい魔法
# >/function neofunction:clock/3_second
# =/function neofunction:entity/skill/tarai


# 説明：金タライを降らし四騎士スポナーを設置する使い魔を召喚する
tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は","color":"red"},{"text":"伝説のたらい魔法","bold":true,"underlined":true,"color":"gold",hover_event:{"action":"show_text","value":"金タライ&四騎士スポナーを設置する使い魔を召喚する"}},{"text":"を唱えた！","color":"red"}]