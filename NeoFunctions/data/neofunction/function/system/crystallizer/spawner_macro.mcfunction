# 命名：spawner_macro
# 説明：
# >/function neofunction:system/crystallizer/spawner
# =/function neofunction:system/crystallizer/spawner_macro

# 【変更：2026-09-27 26.3対応】スポナーに入れるアイテムを 26.3 のアイテム形式（count / components）にする
$data modify storage neofunction:crystallizer SpawnData set value {entity:{id:"item",Item:{id:"paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:$(id)}}},NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b}}