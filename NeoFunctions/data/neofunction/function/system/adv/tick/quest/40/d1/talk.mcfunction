# 命名：talk
# 説明：【追加：2026-10-08 ルブラ編】storage neofunction:rubra talk に入れた会話を、近く（48 マス）のプレイヤー全員に流す。会話中の印 busy を立てる
# 説明：会話の部品は asset/event/talk（Talks[{Text,Delay,Sound,Command}]）。Command は人ごとに動くので、進み具合を変える関数は二重に動かないよう番号で守る
# 実行条件：実行位置 会話の場所
# >/function neofunction:system/adv/tick/quest/40/d1/410
# >/function neofunction:system/adv/tick/quest/40/d1/412
# >/function neofunction:system/adv/tick/quest/40/d1/l4talk
# >/function neofunction:system/adv/tick/quest/40/d1/413
# >/function neofunction:system/adv/tick/quest/40/d1/414
# >/function neofunction:system/adv/tick/quest/40/d1/416
# >/function neofunction:system/adv/tick/quest/40/d1/choice_bury
# >/function neofunction:system/adv/tick/quest/40/d1/choice_take
# >/function neofunction:system/adv/tick/quest/40/d1/418
# =/function neofunction:system/adv/tick/quest/40/d1/talk

# 内容
data modify storage neofunction:rubra busy set value 1b
execute store result storage neofunction:rubra busy_t int 1 run time query gametime
execute as @a[distance=..48] at @s run function neofunction:asset/event/talk/.neo {Path:"neofunction:rubra talk"}
