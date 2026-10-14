# 命名：hint
# 説明：【追加：2026-10-13 ルブラ編】目標のひとこと（画面の下、5 秒ごと）：形態ごとに、今なにをすればよいか
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/look
# =/function neofunction:entity/skill/boss/rubra_void/hint

# 内容
execute store result score #rv_lit temp if entity @e[type=marker,tag=rubra_pillar,predicate=neofunction:rubra/pillar_lit]
execute if data storage neofunction:rubra fin{form:1,win:0} run return run title @a[distance=..160] actionbar [{"text":"星灯の柱のランプに矢を当てて灯せ　","color":"#7FD8FF"},{"score":{"name":"#rv_lit","objective":"temp"},"color":"white","bold":true},{"text":" / 8","color":"#7FD8FF"}]
execute if data storage neofunction:rubra fin{form:1} run return run title @a[distance=..160] actionbar {"text":"膜が剥がれている――星還しの矢を！","color":"#7FD8FF","bold":true}
execute if data storage neofunction:rubra fin{form:2,drag:0} run return run title @a[distance=..160] actionbar [{"text":"柱を灯して、光の鎖で星を引きずり下ろせ　","color":"#FF8C8C"},{"score":{"name":"#rv_lit","objective":"temp"},"color":"white","bold":true},{"text":" / 8","color":"#FF8C8C"}]
execute if data storage neofunction:rubra fin{form:2} run return run title @a[distance=..160] actionbar {"text":"星が下りてきた――星還しの矢を！","color":"#FF8C8C","bold":true}
execute if data storage neofunction:rubra fin{form:3,open:1} run return run title @a[distance=..160] actionbar {"text":"顎が開いている――中の星へ、星還しの矢を！","color":"#FFC23D","bold":true}
execute store result score #rv_hn temp if entity @e[type=ghast,tag=rubra_heart]
execute store result score #rv_hph temp run data get storage neofunction:rubra fin.hp3
execute if data storage neofunction:rubra fin{form:3} run title @a[distance=..160] actionbar [{"text":"回る黒い心臓を、星還しの矢で射抜け　残り ","color":"#B19CD9"},{"score":{"name":"#rv_hn","objective":"temp"},"color":"white","bold":true},{"text":"（","color":"gray"},{"score":{"name":"#rv_hph","objective":"temp"},"color":"gray"},{"text":" / 3）","color":"gray"}]
