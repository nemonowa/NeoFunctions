# 命名：akuu
# 説明：3s周期で30%の確率でプレイヤー座標に転移する。
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/akuu



tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は","color":"red"},{"text":"亜空間転移","bold":true,"underlined":true,"color":"dark_red",hover_event:{"action":"show_text","value":"亜空間を超えてプレイヤーに距離や次元の制限無く転移する。更に追加効果付与。"}},{"text":"を","color":"red"},{"text":"発動","color":"red","bold":true},{"text":"した！","color":"red"}]