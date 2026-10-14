# 命名：902_spare
# 説明：【追加：2026-10-08 ルブラ編】星核の欠片を持っていない人に、ミラが予備の欠片を 4 つ渡す
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/player_interacted_with_entity/villager/902_spare

# 内容
tellraw @s [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「欠片、なくしちゃいました？　予備を渡しておきますね」"}]
function neofunction:system/adv/tick/quest/40/d1/give_fragments
