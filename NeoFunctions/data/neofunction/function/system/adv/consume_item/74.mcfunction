# 命名：74
# 説明：
# >/function neofunction:consume_item/74
# =/function neofunction:system/adv/consume_item/74


# 内容
tellraw @s[scores={doom=11..}] {"text":"* 今は呪われていないようだ。","color":"dark_gray"}
tellraw @s[scores={doom=..10}] [{"selector":"@s"},{"text":"は"},{"text":"「生」","color":"red"},{"text":"を誓った！"}]
playsound minecraft:entity.experience_orb.pickup record @s[scores={doom=..10}] ~ ~ ~ 1 1.5 1
scoreboard players set @s doom 11
