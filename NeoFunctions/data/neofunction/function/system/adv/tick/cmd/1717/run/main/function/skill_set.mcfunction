# 命名：skill_set
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/skill_set

data modify storage neofunction:item/1717 Run.SkillSet.Var set from storage neofunction:item/1717 Run.Arguments[0]
execute if data storage neofunction:item/1717 Run.SkillSet{Var:1} store result score @s slotR run data get storage neofunction:item/1717 Run.Arguments[1]
execute if data storage neofunction:item/1717 Run.SkillSet{Var:2} store result score @s slotR run data get storage neofunction:item/1717 Run.Arguments[1]
execute if data storage neofunction:item/1717 Run.SkillSet{Var:3} store result score @s slotR run data get storage neofunction:item/1717 Run.Arguments[1]