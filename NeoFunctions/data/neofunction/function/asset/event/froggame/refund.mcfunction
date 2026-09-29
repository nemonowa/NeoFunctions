# 命名：froggame
# 説明：へんきん
# >/function neofunction:system/adv/tick/quest/tag/101
# =/function neofunction:asset/event/froggame/refund


# 内容

loot spawn ~ ~ ~ loot neofunction:item/mamon/10
tellraw @s {"text":"このゲームは挑戦中です。挑戦が終了するまで待機してください。","color":"dark_red","bold":true,"italic":false}
playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.0 2.0