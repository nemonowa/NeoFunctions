# 命名：skill-special-loop
# 説明：終影審判【エンド・オブ・シャドウ】の本体ループ。
# 説明：2t(0.1秒)間隔で、範囲内の最も近い敵の背後へ瞬間移動して斬りつける。
# 説明：合計20回(=約2秒間)攻撃するか、対象がいなくなったら自動的に終了する。
# 説明：および neofunction:player/job/assasin/skill-special-loop-resume（2t毎の再開）
# >/function neofunction:player/job/assasin/skill-special
# =/function neofunction:player/job/assasin/skill-special-loop


# 対象が誰もいなければ即終了
execute unless entity @e[tag=assasin-special-1] run function neofunction:player/job/assasin/skill-special-end

# 攻撃回数をカウント
scoreboard players add @s SpecialHit 1

# 前回「今回の的」だった対象のマークを一旦クリア
tag @e[tag=assasin-special-current] remove assasin-special-current

# 対象全員がヒット済みなら一巡したとみなし、ヒット履歴をリセットしてまた最初から回す
execute unless entity @e[tag=assasin-special-1,tag=!assasin-special-hit] run tag @e[tag=assasin-special-1] remove assasin-special-hit

# 未ヒットの中から最も近い1体を「今回の的」として確定し、ヒット済みにする
tag @e[tag=assasin-special-1,tag=!assasin-special-hit,limit=1,sort=nearest] add assasin-special-current
tag @e[tag=assasin-special-current] add assasin-special-hit

# 今回の的の背後へ瞬間移動し、そちらを向く
execute as @e[tag=assasin-special-current] at @s run tp @p ^ ^ ^-1.2

# 演出：斬撃の残光
execute as @e[tag=assasin-special-current] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 6 normal
execute as @e[tag=assasin-special-current] at @s run particle minecraft:crit ~ ~1 ~ 0.3 0.5 0.3 0.3 10 normal
playsound minecraft:entity.player.attack.sweep record @s ~ ~ ~ 0.6 1.6
playsound minecraft:block.amethyst_block.hit record @s ~ ~ ~ 0.7 1.8

# ダメージ（レベル帯で調整、1発ぶんの威力。20発当たれば合計で相応の火力になる）
execute as @s[scores={LVL=10..}] as @e[tag=assasin-special-current] run damage @s 10 minecraft:generic by @p
execute as @s[scores={LVL=30..}] as @e[tag=assasin-special-current] run damage @s 20 minecraft:generic by @p
execute as @s[scores={LVL=50..}] as @e[tag=assasin-special-current] run damage @s 40 minecraft:generic by @p
execute as @s[scores={LVL=70..}] as @e[tag=assasin-special-current] run damage @s 80 minecraft:generic by @p
execute as @s[scores={LVL=90..}] as @e[tag=assasin-special-current] run damage @s 160 minecraft:generic by @p

# 20回攻撃し終えたら終了処理へ
execute if score @s SpecialHit matches 20.. run function neofunction:player/job/assasin/skill-special-end

# まだ回数が残っていて対象もいれば、2t後に再開処理を予約
# 【修正点】scheduleは実行者(@s)の文脈を保持せず、サーバーとして実行されてしまう仕様のため、
#           自分自身を直接scheduleするとタグ以外の@s依存コマンドが次tickで全滅する。
#           そのため中継ファンクション(skill-special-loop-resume)をscheduleし、
#           そちら側でタグから@sを復元してから本ループへ渡す。
execute if score @s SpecialHit matches ..19 if entity @e[tag=assasin-special-1] run schedule function neofunction:player/job/assasin/skill-special-loop-resume 2t replace
