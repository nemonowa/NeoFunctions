# 命名：slot-green
# 説明：トリガー：スキル選択画面【レッド】
# 説明：@a[scores={slotG=1..}]
# 説明：slotGが1以上の時、1度だけ発動
# >/function neofunction:system/trigger/code/62
# >/trigger slotG set 1
# =/function neofunction:system/trigger/slot-green


# 内容
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9 1
trigger slotG set 0
scoreboard players enable @s slotG
function neofunction:asset/skill/.setting
tellraw @s [{"text":"⌖ スキル変更完了","color":"white","bold":true,"italic":false},{"text":"【グリーン】","color":"green"}]


