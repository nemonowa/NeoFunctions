# 命名：slot-blue
# 説明：トリガー：スキル選択画面【ブルー】
# 説明：@a[scores={slotB=1..}]
# 説明：slotBが1以上の時、1度だけ発動
# >/function neofunction:system/trigger/code/63
# >/trigger slotB set 1
# =/function neofunction:system/trigger/slot-blue


# 内容
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9 1
trigger slotB set 0
scoreboard players enable @s slotB
function neofunction:asset/skill/.setting
tellraw @s [{"text":"⌖ スキル変更完了","color":"white","bold":true,"italic":false},{"text":"【ブルー】","color":"aqua"}]


