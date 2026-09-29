# 命名：get_var_macro
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/get_var
# =/function neofunction:system/adv/tick/cmd/1717/run/main/get_var_macro

$execute if data storage neofunction:item/1717 Run.Var.$(Var) run return run data get storage neofunction:item/1717 Run.Var.$(Var)
$execute unless data storage neofunction:item/1717 Run.Var.$(Var) run return 0