# 命名：100
# 説明：テスト用!
# 実行条件：手動
# >/function neofunction:test
# =/function neofunction:system/adv/inventory_changed/structure_block/100



## 内容
say test
function neofunction:asset/event/quest/quest_clear
advancement revoke @s only neofunction:inventory_changed/structure_block/100
advancement revoke @s only neofunction:tick/quest/100





## advancement revoke @s only neofunction:test
# setblock 1289 133 1297 minecraft:command_block[conditional=false,facing=west]{Command:"§e§k-§5T§dhe§51§d000§5mD§dropper§e§k-§r",CustomName:"@",SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}


#$tellraw @a {click_event:{"action":"copy_to_clipboard","value":"/embark mcid:[mcid] code:$(mcver)$(time)$(ver)"},hover_event:{"action":"show_text","value":[{"text":"click to copy!!"}]},"text":"クリップボードにコピー"}





# ワールド内蔵のコマンドブロックからデタパ検知する機構（オーバーライド式）
# https://discord.com/channels/802086247291158538/998088115669434429/1305681259091202090
# tellraw @a[distance=..8] [{"text":"DataPack > Ready!! (v1.0.0)","color":"yellow",hover_event:{"action":"show_text","value":[{"text":"click"}]},click_event:{"action":"open_url",url:"https://github.com/nemonowa"}},{"text":"\nCheck & Download latest version for here!","underlined":true}]