# 命名：get_next
# 説明：（説明未記載）
# >
# =/function neofunction:asset/event/talk/get_next

execute store result score #Calc1 temp run time query gametime
execute store result score #Calc2 temp run data get storage neofunction:talk $.Talks[0].Delay
return run scoreboard players operation #Calc1 temp += #Calc2 temp