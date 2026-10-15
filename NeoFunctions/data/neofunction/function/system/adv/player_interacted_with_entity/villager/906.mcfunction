# 命名：906
# 説明：洗い場の子どもに話しかけたとき。422（カシムの話のあと）で手まり歌。それ以外は鼻歌
# 実行条件：実行者・実行位置 洗い場の子ども（村人、DeathLootTable neofunction:asset/summon/906）
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/906

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
execute if score #temp main_story matches 422 run return run function neofunction:system/adv/tick/quest/40/d2/423
tellraw @p [{"text":"<"},{"text":"洗い場の子ども","color":"#F2C7A0","bold":true},{"text":"> 「ほしさま　ほしさま　どこからきたの……♪」"}]
