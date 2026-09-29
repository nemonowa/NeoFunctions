# 命名：.all_trigger_make
# 説明：トリガー作成処理
# >/function neofunction:system/setting/2_scoreboard
# =/function neofunction:system/trigger/.all_trigger_make


## 内容
scoreboard objectives add code trigger "§7Secret Code"
scoreboard objectives add teleport trigger "【トリガー】転送要請"
scoreboard objectives add tip trigger "【トリガー】ヒントを表示"
scoreboard objectives add kill trigger "【トリガー】自決用"
scoreboard objectives add on trigger "【トリガー】スキル発動"
scoreboard objectives add skill trigger "【トリガー】スキル習得"
scoreboard objectives add slotR trigger "§cスキルスロット-レッド-"
scoreboard objectives add slotG trigger "§aスキルスロット-グリーン-"
scoreboard objectives add slotB trigger "§bスキルスロット-ブルー-"



function neofunction:system/trigger/.all_trigger_enable