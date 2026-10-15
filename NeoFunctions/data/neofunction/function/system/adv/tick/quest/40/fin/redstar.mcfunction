# 命名：redstar
# 説明：夜空に、新しい赤い星を灯す（結末 A・C）。タグは rubra_redstar だけ
# 実行条件：どこでも（セレスタ次元）
# >/function neofunction:system/adv/tick/quest/40/fin/449
# =/function neofunction:system/adv/tick/quest/40/fin/redstar

# 内容
kill @e[type=block_display,tag=rubra_redstar]
execute as @e[type=marker,tag=rubra_fin_star,limit=1] at @s run summon block_display ~ ~ ~ {Tags:["rubra_redstar"],block_state:{id:"minecraft:red_stained_glass"},brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16737380,view_range:8.0f,transformation:{left_rotation:[0.28f,0.36f,0.12f,0.88f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]}}
