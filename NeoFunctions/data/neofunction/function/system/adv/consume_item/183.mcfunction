# 命名：183
# 説明：進捗達成時：ソイソルトグリーン
# >/function neofunction:consume_item/
# =/function neofunction:system/adv/consume_item/183


# 内容
tellraw @a [{"text":"* ","color":"red","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"周囲にスライムが降り注ぐ。"}]}},{"selector":"@s"},{"text":" はスライム病を発症した！"}]

summon slime ~ ~5 ~ {Size:3,Tags:["lv3"],Passengers:[{id:"minecraft:magma_cube",Size:2,Tags:["lv2"],Passengers:[{id:"minecraft:slime",Size:1,Tags:["lv1"]}]}]}