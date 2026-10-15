# 命名：赤砂獣
# 説明：【追加：2026-10-15 ルブラ編】メサの自然湧きの置き換え先（クモ枠）。赤い谷を群れずにうろつく、牙の太い獣。皮は防具に、肉は食堂の煮込みになる。生成は scratchpad の mesa_mob_gen.py
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/929

summon hoglin ~ ~ ~ {Silent:1b,CustomName:{"text":"赤砂獣","color":"#B85A2E","bold":true,"italic":false},Tags:[lv2,rubra_mesa],DeathLootTable:"neofunction:asset/summon/929",IsImmuneToZombification:1b,CannotBeHunted:1b}
