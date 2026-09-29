# 命名：item
# 説明：存在解析処理
# 実行条件：アンカーポイントを本で解析したときの処理
# >/function neofunction:asset/skill/2
# =/function neofunction:asset/skill/2/item



# 接続失敗
# 【変更：2026-09-27 26.3対応】HideFlags:0 の「解析済み」印は 26.3 では保存できない（空の tooltip_display は既定値と同じで保存されない）ため、解析時に必ず付く説明文で解析済みを判定する
execute if data entity @s Item.components{"minecraft:lore":[{text:"⌖ (Analyzed：解析済み) ⌖"}]} run return run tellraw @a[distance=..8,tag=skill2] {"text":"解析対象はアイテム(解析済み)"}
# 【変更：2026-09-27 26.3対応】HideFlags の有無は tooltip_display（既定値以外）の有無に相当する
execute unless data entity @s Item.components."minecraft:tooltip_display" run return run tellraw @a[distance=..8,tag=skill2] {"text":"解析対象はアイテム(隠し効果は否存在)"}

tellraw @a[distance=..8,tag=skill2] [{"text":"解析対象はアイテム（ハイドフラグ除去）"}]
# 【変更：2026-09-27 26.3対応】HideFlags を 0 にする（＝すべて表示）は tooltip_display を消すことに相当する
data remove entity @s Item.components."minecraft:tooltip_display"
data merge entity @s {Item:{components:{"minecraft:lore":[{"text":"⌖ (Analyzed：解析済み) ⌖","color":"aqua","italic":false}]}}}
# tellraw @a[distance=..8,tag=skill2] {"selector":"@s",hover_event:{"action":"show_item",id:"@s"}}


