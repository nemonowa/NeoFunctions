# 命名：tidy_all
# 説明：今の進み具合までに終わった章の後片付けをまとめてする
# 説明：手で実行：/function neofunction:system/world/ceresta/rubra/tidy_all（第一章は 420 から、第二章は 430 から、第三章は 440 から、終章は 449 で片付ける）
# >/function （手で実行）
# =/function neofunction:system/world/ceresta/rubra/tidy_all

# 内容
execute if score #temp main_story matches 420..499 run function neofunction:system/world/ceresta/rubra/tidy_d1
execute if score #temp main_story matches 430..499 run function neofunction:system/world/ceresta/rubra/tidy_d2
execute if score #temp main_story matches 440..499 run function neofunction:system/world/ceresta/rubra/tidy_d3
execute if score #temp main_story matches 449 run function neofunction:system/world/ceresta/rubra/tidy_fin
tellraw @s {"text":"終わった章の目印・残骸を片付けています（2 秒）……","color":"gray"}
