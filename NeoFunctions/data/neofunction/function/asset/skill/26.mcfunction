# 命名：トグル処理
# 説明：リアクティブヒール（ダメージを受けた時にSP10を消費して♡×8回復する。SPが0になっても回復は続ける。）
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >/function neofunction:system/adv/entity_hurt_player/skill26
# =/function neofunction:asset/skill/26



# 内容
execute if entity @s[tag=skill26] run tellraw @s {"text":"🔯リアクティブヒールを停止した！","color":"dark_aqua"}
execute if entity @s[tag=skill26] run return run tag @s remove skill26

tag @s add skill26
playsound entity.player.levelup master @s ~ ~ ~ 1 1.88 0
tellraw @s {"text":"🔯リアクティブヒールを起動した！","color":"dark_aqua",hover_event:{"action":"show_text","value":[{"text":"ダメージを受けた時にSP10を消費して回復する。SPが0になっても回復できる。"}]}}
