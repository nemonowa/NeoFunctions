# 命名：オナカイッパイダーAEC
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/311

# 【変更：2026-09-28 26.3対応】26.3（1.21.5 以降）では投げたポーションのエンティティ potion が splash_potion と lingering_potion に分かれた。中身が残留ポーションなので lingering_potion にする
summon lingering_potion ~ ~ ~ {CustomName:{"text":"オナカイッパイダーAEC"},Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16725558,custom_effects:[{id:"minecraft:saturation",amplifier:0b,duration:10}]}}},Tags:[lv1,],DeathLootTable:"neofunction:asset/summon/311"}