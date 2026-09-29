# 命名：set
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/set

data modify storage neofunction:item/1717 Run.Set.Var set from storage neofunction:item/1717 Run.Arguments[0]
data modify storage neofunction:item/1717 Run.Set.Value set from storage neofunction:item/1717 Run.Arguments[1]

function neofunction:system/adv/tick/cmd/1717/run/main/function/set_var with storage neofunction:item/1717 Run.Set
