# 命名：tick
# 説明：実行者　ざらざら 実行地位　398 40 1031
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:entity/skill/boss/sarazaru/tick

# 内容：保護の中身
#sarazaruが外に行かないように保護
execute unless entity @s[distance=..40] run tp @s 398 40 1031

#プレイヤーが32mエリアに存在している間は処理をここで終了
execute as @a[x=373,y=41,z=1006,dx=50,dy=20,dz=50,gamemode=!spectator] at @s if entity @s[x=398,z=1031,distance=0..25] run return 0

execute if data entity @s {Health:0f} run say a

# ここから下は上の条件に合致した場合のみ
#40m以内の全てのエンティティにdel付与（削除）
#ヴァレリカが煽る

execute as @e[tag=sarazaru] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"この海は、覚悟なき者を受け入れはしない。。","color":"gray","bold":true,"italic":false}]
execute as @e[tag=sarazaru] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"波に選ばれるだけの力を、その身に刻んで来い。","color":"gray","bold":true,"italic":false}]
execute as @e[tag=sarazaru] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"その時こそ、俺がお前を海賊と認めよう。","color":"gray","bold":true,"italic":false}]

tag @e[tag=enemy,distance=..40] add del
schedule function neofunction:asset/bossbar/hide 1s