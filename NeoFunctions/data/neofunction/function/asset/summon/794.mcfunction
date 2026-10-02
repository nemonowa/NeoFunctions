# 命名：794
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/794

# 【変更：2026-10-01 26.3対応】ttl:2147483647s は short の範囲を超えて 26.3 では関数ごと失敗するため L（long）に（1.20.4 では無視されていたが、本来の意図どおりずっと敵対する）
summon piglin ~ ~ ~ {ImmuneToZombification:1b,CannotHunt:0b,Brain:{memories:{"minecraft:angry_at":{value:[I;-1,-1,-1,-1],ttl:2147483647L}}},Tags:[lv2,],DeathLootTable:"neofunction:asset/summon/794"}