# 命名：yakusoku20
# 説明：約束石
# 説明：自動
# >advancemnet neofunction:advancements/tick/quest/<questNum>
# =/function neofunction:system/adv/tick/quest/item/yakusoku20


tellraw @s {"text":"約束石の効果が発動した！","color":"gold","bold":true,"italic":false}
playsound entity.player.levelup record @s ~ ~ ~ 0.6 1.2
loot spawn ~ ~1 ~ loot neofunction:item/mamon/20