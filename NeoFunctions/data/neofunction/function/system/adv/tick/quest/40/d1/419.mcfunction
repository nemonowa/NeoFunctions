# 命名：419
# 説明：【追加：2026-10-08 ルブラ編】第一章「紅脈の坑」の終わり。進み具合 419（第二章「涸れ泉の聖堂」は 420 から。まだ作っていない）
# 実行条件：実行者 プレイヤー（会話の最後の Command。418 のときだけ進める）
# >/function neofunction:system/adv/tick/quest/40/d1/418（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/419

# 内容
# 【変更：2026-10-14】章ごとの「メインクエストを達成した」の表示はやめた（ルブラ編は終章 449 でまとめて 1 つのメインクエストとして達成）
execute unless score #temp main_story matches 418 run return 0
scoreboard players set #temp main_story 419
data remove storage neofunction:rubra busy
# 【追加：2026-10-09】この章で使い終わった目印・残骸を片付ける
function neofunction:system/rubra/tidy_d1
