# 命名：container_check
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/save/.neo
# =/function neofunction:system/adv/tick/cmd/1717/editor/save/container_check

# 【変更：2026-09-27 26.3対応】バンドルの中身のアイテムも components 形式になるため
execute store result score #Calc1 temp run data get entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_model_data".floats[0]
execute if score #Calc1 temp matches ..1717 run function neofunction:system/adv/tick/cmd/1717/editor/save/drop
execute if score #Calc1 temp matches 1739..1760 run function neofunction:system/adv/tick/cmd/1717/editor/save/drop
execute if score #Calc1 temp matches 1764.. run function neofunction:system/adv/tick/cmd/1717/editor/save/drop
data remove entity @s item.components."minecraft:bundle_contents"[0]
execute if data entity @s item.components."minecraft:bundle_contents"[0] run function neofunction:system/adv/tick/cmd/1717/editor/save/container_check