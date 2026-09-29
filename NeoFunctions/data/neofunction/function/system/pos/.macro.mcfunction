# 命名：.macro
# 説明：ワールドセッティング
# >/function neofunction:system/pos/.macro with storage neofunction:pos/last_death_location
# >/function neofunction:system/pos/.macro with storage neofunction:pos/spawn_location
# >/function neofunction:system/pos/.macro with storage pos:1
# =/function neofunction:system/pos/.macro


## 内容
$execute in $(dimension) run tp @s $(x) $(y) $(z)
effect give @s minecraft:blindness 2 0 false
effect give @s minecraft:slow_falling 3 0 false

# 記録保存(https://discord.com/channels/802086247291158538/998088115669434429/1320814351841624148)
$data modify storage pos:prev dimension set value "$(dimension)"
$data modify storage pos:prev name set value '$(name)'
$data modify storage pos:prev x set value $(x)
$data modify storage pos:prev y set value $(y)
$data modify storage pos:prev z set value $(z)

$tellraw @s ["",{"text":"個体名 "},{"selector":"@s"},{"text":" を目標地点 "},$(name),{"text":" へ転相完了。over."}]

# $tellraw @s ["",{"text":"汎用一意識別子、認証。潜空接続、確立。\n個体名 "},{"selector":"@s"},{"text":" 目標座標 "},{"text":"$(x)"},{"text":" "},{"text":"$(y)"},{"text":" "},{"text":"$(z)"},{"text":" へ同期...\n目標地点"},$(name),{"text":"...転送！\n転送完了。作戦行動、開始。over"}]
