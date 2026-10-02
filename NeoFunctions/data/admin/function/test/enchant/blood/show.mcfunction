# 命名：show
# 説明：血盟（試作）。たまった血の印をアクションバーに表示する
# 実行条件：攻撃を当てたプレイヤー
# >/function admin:test/enchant/blood/hit
# =/function admin:test/enchant/blood/show


# 内容
execute if score @s neo.blood matches 1 run title @s actionbar {"text":"血盟 ●○○○○","color":"dark_red"}
execute if score @s neo.blood matches 2 run title @s actionbar {"text":"血盟 ●●○○○","color":"dark_red"}
execute if score @s neo.blood matches 3 run title @s actionbar {"text":"血盟 ●●●○○","color":"dark_red"}
execute if score @s neo.blood matches 4 run title @s actionbar {"text":"血盟 ●●●●○","color":"dark_red"}
execute if score @s neo.blood matches 5.. run title @s actionbar {"text":"血盟 ●●●●● 解放可能！","color":"red","bold":true}
