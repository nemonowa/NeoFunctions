# 命名：run
# 説明：
# >/function neofunction:clock/3_second
# =/function neofunction:entity/skill/run


tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"逃亡","bold":true,hover_event:{"action":"show_text","value":"倒してもアイテムが落ちなくなり、一定時間後きえる。"}},{"text":"した！"}]
data merge entity @s {DeathLootTable:"empty",DropItem:0b,PortalCooldown:200}