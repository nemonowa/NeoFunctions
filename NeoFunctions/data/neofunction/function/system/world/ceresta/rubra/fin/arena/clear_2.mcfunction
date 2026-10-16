# 命名：clear_2
# 説明：星還りの空の範囲（x868〜974・y194〜209・z3229〜3335）を空気に戻し、目印と黒い水を消す
# 説明：カーペットを先に消し、上の段から下へ消す。落ちた黒いカーペットも消す
# 実行条件：schedule
# >/function neofunction:system/world/ceresta/rubra/fin/arena/clear
# =/function neofunction:system/world/ceresta/rubra/fin/arena/clear_2

# 内容
execute in neodimension:ceresta_festa as @e[type=marker,tag=rubra_ink] at @s run setblock ~ ~ ~ minecraft:air
execute in neodimension:ceresta_festa run kill @e[type=marker,tag=rubra_ink]
execute in neodimension:ceresta_festa run fill 868 200 3229 974 202 3335 minecraft:air replace minecraft:black_carpet
execute in neodimension:ceresta_festa run fill 868 207 3229 974 209 3335 minecraft:air
execute in neodimension:ceresta_festa run fill 868 204 3229 974 206 3335 minecraft:air
execute in neodimension:ceresta_festa run fill 868 201 3229 974 203 3335 minecraft:air
execute in neodimension:ceresta_festa run fill 868 198 3229 974 200 3335 minecraft:air
execute in neodimension:ceresta_festa run fill 868 194 3229 974 197 3335 minecraft:air
execute in neodimension:ceresta_festa positioned 866 150 3226 run kill @e[type=item,dx=110,dy=70,dz=112]
execute in neodimension:ceresta_festa run kill @e[type=marker,tag=rubra_sky]
execute in neodimension:ceresta_festa run forceload remove 866 3226 976 3338
