# 命名：.setting
# 説明：エンティティ処理
# 実行条件：進捗達成時
# >/function neofunction:asset/tellraw/menu
# =/function neofunction:asset/skill/.setting


# 内容
scoreboard players enable @s slotR
scoreboard players enable @s slotG
scoreboard players enable @s slotB

execute store result storage neofunction:skill red float 1 run scoreboard players get @s slotR
execute store result storage neofunction:skill green float 1 run scoreboard players get @s slotG
execute store result storage neofunction:skill blue float 1 run scoreboard players get @s slotB

function neofunction:asset/skill/.setting/.macro with storage neofunction:skill

