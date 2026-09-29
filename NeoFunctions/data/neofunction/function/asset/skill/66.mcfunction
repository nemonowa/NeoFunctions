# 命名：カラーオブアロー
# 説明：放った矢が虹色になる
# >/function neofunction:system/adv/entity_hurt_player/skill25
# =/function neofunction:asset/skill/66


# 内容：
execute if entity @s[tag=skill66] run tellraw @s {"text":"🔯カラー・オブ・アローを停止した！","color":"dark_aqua"}
execute if entity @s[tag=skill66] run return run tag @s remove skill66
effect give @s glowing 1 0
tag @s add skill66


# 演出
playsound entity.player.levelup master @s ~ ~ ~ 1 1.88 0
tellraw @s {"text":"🔯カラー・オブ・アローを起動した！","color":"dark_aqua",hover_event:{"action":"show_text","value":[{"text":"ダメージを受けた時にSP10を消費して回復する。"}]}}

# 消費SP
scoreboard players remove @s SP 0



