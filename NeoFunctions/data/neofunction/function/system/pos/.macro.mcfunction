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
# 【変更：2026-09-29 26.3対応】名前をマクロで '…' に埋め込むと、26.3 の文章の部品（{text:…}）が文字列として保存され、本の「前回の地点」に字面が出る。また飾りの無い名前はただの文字になり、埋め込むと命令文として読めず .macro 全体が失敗する。そのため、名前は元の地点のストレージ（pos:$(id)）から型のままコピーする（ユーザーの判断）
$data modify storage pos:prev name set from storage pos:$(id) name
$data modify storage pos:prev id set value $(id)
$data modify storage pos:prev x set value $(x)
$data modify storage pos:prev y set value $(y)
$data modify storage pos:prev z set value $(z)

# 【変更：2026-09-29 26.3対応】名前を $(name) で埋め込まず、コピーした pos:prev の名前を文章として読む（理由は上と同じ）
tellraw @s ["",{"text":"個体名 "},{"selector":"@s"},{"text":" を目標地点 "},{"nbt":"name","storage":"pos:prev","interpret":true},{"text":" へ転相完了。over."}]

# 【変更：2026-09-29 26.3対応】コメント内の旧文面も同じく名前の読み方を合わせた
# $tellraw @s ["",{"text":"汎用一意識別子、認証。潜空接続、確立。\n個体名 "},{"selector":"@s"},{"text":" 目標座標 "},{"text":"$(x)"},{"text":" "},{"text":"$(y)"},{"text":" "},{"text":"$(z)"},{"text":" へ同期...\n目標地点"},{"nbt":"name","storage":"pos:prev","interpret":true},{"text":"...転送！\n転送完了。作戦行動、開始。over"}]