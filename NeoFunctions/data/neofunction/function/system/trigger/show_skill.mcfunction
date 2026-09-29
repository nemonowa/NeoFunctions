# 命名：show_skill
# 説明：
# >
# =/function neofunction:system/trigger/show_skill

$data modify storage neofunction:skill color set value "$(color)"
$data modify storage neofunction:skill C set value "$(C)"
execute store result storage neofunction:skill skill int 1 run scoreboard players get #Calc1 temp
function neofunction:system/trigger/show_skill_macro with storage neofunction:skill