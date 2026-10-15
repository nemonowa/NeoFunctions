# 命名：cool
# 説明：星核鎧「超新星」の写し：使ったあとの待ち（neo.nk_st が -200〜-1）を 1 ずつ戻す。0 になったら知らせる
# 実行条件：写しの鎧を着ていて、待ちのプレイヤー（エンチャントの tick から）
# >/enchantment neofunction:choushinsei_replica
# =/function neofunction:asset/enchantment/choushinsei_replica/cool

# 内容
scoreboard players add @s neo.nk_st 1
execute if score @s neo.nk_st matches 0 run title @s actionbar {"text":"胸の星核が、また温かくなった","color":"aqua"}
execute if score @s neo.nk_st matches 0 run scoreboard players reset @s neo.nk_st
