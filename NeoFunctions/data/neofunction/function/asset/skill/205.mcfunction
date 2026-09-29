# 命名：リアクティブヒール
# 説明：ダメージを受けた時にSP10を消費して♡×4回復する。SPが0になっても回復は続ける。（トグル処理）
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# 説明：≒/function neofunction:asset/skill/25
# >/function neofunction:system/adv/entity_hurt_player/skill25
# =/function neofunction:asset/skill/205


# 内容：
execute if entity @s[tag=skill25] run tellraw @s {"text":"🔯リアクティブヒールを停止した！","color":"dark_aqua"}
execute if entity @s[tag=skill25] run return run tag @s remove skill25
effect give @s glowing 1 0
tag @s add skill25


# 演出
playsound entity.player.levelup master @s ~ ~ ~ 1 1.88 0
tellraw @s {"text":"🔯リアクティブヒールを起動した！","color":"dark_aqua",hover_event:{"action":"show_text","value":[{"text":"ダメージを受けた時にSP10を消費して回復する。"}]}}

# 消費SP
scoreboard players remove @s SP 10



