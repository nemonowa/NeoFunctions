# 命名：spawn
# 説明：【追加：2026-10-09 ルブラ編】ヴォイド・ゼロを出す：見えない大きなガスト（当たり判定、体力 1000）と見張り役、黒い水の塊と黒い膜の見た目。記録を初めに
# 実行条件：実行位置 ボスの浮かぶ所（rubra_sky_boss）
# >/function neofunction:entity/skill/boss/rubra_void/start_2
# =/function neofunction:entity/skill/boss/rubra_void/spawn

# 内容
function neofunction:entity/skill/boss/rubra_void/clean
function neofunction:asset/summon/913
# 【変更：2026-10-14】到達した形態からの再戦は、共通の出現処理（全回復する）が終わってから tick で合わせる（ckp、spawn_ckpt）
# 見張り役は最初から check を付けて出し、共通の出現処理を通さない（通すと boss を見て BOSS WARNING が出る・vanilla が付いて毎 tick に回らない）
summon marker ~ ~ ~ {Tags:["boss","check","nobossbar","rubra_fin","rubra_void_ctl"]}
function neofunction:entity/skill/boss/rubra_void/look_black
data modify storage neofunction:rubra fin merge value {state:"fight",form:1,at:0,pn:0,lt:0,bt:0,lk:0,ik:0,a:0,c:0,pull:0,win:0,drag:0,ht:0,tp:0,rw:0,open:0,hn:4,u:0,rp:0,vul:0b,retry:0b,sc:0}
execute if data storage neofunction:rubra fin{ckpt:2} run data modify storage neofunction:rubra fin.ckp set value 1b
execute if data storage neofunction:rubra fin{ckpt:3} run data modify storage neofunction:rubra fin.ckp set value 1b
playsound minecraft:ambient.underwater.enter hostile @a[distance=..128] ~ ~ ~ 3 0.4
playsound minecraft:entity.warden.emerge hostile @a[distance=..128] ~ ~ ~ 3 0.6
particle minecraft:squid_ink ~ ~ ~ 6 6 6 0.1 600 force @a[distance=..128]
title @a[distance=..128] subtitle {"text":"第 1 形態　黒い膜に守られた虚の海","color":"gray"}
execute if data storage neofunction:rubra fin{elite:1b} run title @a[distance=..128] subtitle {"text":"エリートチャレンジ　すべてが、より苛烈に","color":"#FF5555","bold":true}
title @a[distance=..128] title {"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true}
tellraw @a[distance=..128] {"text":"黒い渦が、黒い水の膜をまとっている。矢も刃も、膜に呑まれて届かない。","color":"gray","italic":true}
tellraw @a[distance=..128] [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「まわりの小島に、星灯の柱が八本ある！ 消えた柱のランプに、その弓で矢を当てて。八本ぜんぶ灯せば、膜が剥がれる！」"}]
