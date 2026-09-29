# 命名：awakener
# 説明：導入描写 プロローグ
# 説明：tag=awakener 呼び出し
# >
# =/function neofunction:asset/event/awakener


# 内容
stopsound @a[tag=awakener]
effect give @a[tag=awakener] minecraft:blindness 30 0 false
playsound minecraft:neo/mozell/harvest_dance record @a[tag=awakener] ~ ~ ~ 1 1 1
execute as @a[tag=awakener] run function neofunction:system/pos/.macro with storage pos:72

advancement revoke @a[tag=prologue] only neoadvancement:ceresta/root
advancement grant @a[tag=prologue] only neoadvancement:ceresta/root

schedule function neofunction:asset/event/awakener/1 1s replace
schedule function neofunction:asset/event/awakener/2 4s replace
schedule function neofunction:asset/event/awakener/3 10s replace
schedule function neofunction:asset/event/awakener/4 14s replace
schedule function neofunction:asset/event/awakener/5 18s replace
schedule function neofunction:asset/event/awakener/6 25s replace
schedule function neofunction:asset/event/awakener/7 30s replace
schedule function neofunction:asset/event/awakener/8 41s replace
schedule function neofunction:asset/event/awakener/9 49s replace
schedule function neofunction:asset/event/awakener/10 57s replace
schedule function neofunction:asset/event/awakener/11 60s replace




