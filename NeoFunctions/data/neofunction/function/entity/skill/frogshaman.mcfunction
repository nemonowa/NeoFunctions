# 命名：ワープ処理
# 説明：
# >/function neofunction:clock/3_second
# =/function neofunction:entity/skill/frogshaman


# 説明：3s周期で10%の確率で周囲にカエル魔法を召喚する。燃えたり足遅くなったり毒だったり
function neofunction:asset/summon/699
function neofunction:asset/summon/700
function neofunction:asset/summon/701
tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"フロッグスペル","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"カエルの魔法を召喚する。"}]}},{"text":"を唱えた！"}]