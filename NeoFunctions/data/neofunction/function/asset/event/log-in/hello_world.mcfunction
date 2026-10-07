# 命名：hello_world
# 説明：初回一度or初期化設定
# 説明：プレイヤーの初ログイン（ワールド初期生成時、データパック導入時）
# >/function neofunction:event/relog-in
# =/function neofunction:asset/event/log-in/hello_world


#内容
execute in neodimension:nexus run forceload add 1280 1280
execute in neodimension:nexus run forceload add 1 1 -1 -1
#execute in neodimension:nexus run setblock 1280 128 1280 minecraft:lodestone destroy
data modify storage neofunction:asset version set value '{"text":"ver 0.3.5","color":"green"}'

function neofunction:system/setting/2_scoreboard
scoreboard objectives setdisplay sidebar
execute store success storage neofunction:asset scoreboard byte 1 run scoreboard objectives setdisplay sidebar world


#地形操作
#fill 0 0 0 15 15 15 minecraft:barrier hollow
#execute in minecraft:overworld positioned 1280 0 1280 run place template minecraft:hub1

#
schedule function neofunction:system/setting 1s replace
#schedule function neofunction:asset/event/log-in/.main 4s replace
