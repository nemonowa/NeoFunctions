# 命名：slot-red
# 説明：トリガー：スキル選択画面【レッド】
# 説明：@a[scores={slotR=1..}]
# 説明：slotRが1以上の時、1度だけ発動
# >/function neofunction:system/trigger/code/61
# >/trigger slotR set 1
# =/function neofunction:system/trigger/slot-red


# 内容
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9 1
trigger slotR set 0
scoreboard players enable @s slotR
function neofunction:asset/skill/.setting
tellraw @s [{"text":"⌖ スキル変更完了","color":"white","bold":true,"italic":false},{"text":"【レッド】","color":"red"}]



