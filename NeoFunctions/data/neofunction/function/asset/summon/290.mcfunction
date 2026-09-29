# 命名：回復AEC
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/290

# 【変更：2026-09-28 26.3対応】26.3（1.21.5 以降）では投げたポーションのエンティティ potion が splash_potion と lingering_potion に分かれた。中身が残留ポーションなので lingering_potion にする
summon lingering_potion ~ ~ ~ {CustomName:{"text":"回復AEC"},Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}},Motion:[0.0,0.4,0.0],Tags:[lv1,],DeathLootTable:"neofunction:asset/summon/290"}