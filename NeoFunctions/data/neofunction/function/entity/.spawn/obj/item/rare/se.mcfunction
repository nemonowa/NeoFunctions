# 命名：se
# 説明：シークレット
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/se


# SE・アイテム
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Secret:","extra":[{"text":"*","extra":[{"text":"*","extra":[{"text":"*","extra":[{"text":"*","extra":[{"text":"*","obfuscated":true,"color":"#FF602C"}],"obfuscated":true,"color":"#FF8330"}],"obfuscated":true,"color":"#FFAC34"}],"obfuscated":true,"color":"#FFCC38"}],"obfuscated":true,"italic":false,"color":"#FFE33B"}],"italic":false,"color":"blue","bold":true}

