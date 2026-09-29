# 命名：994
# 説明：
# >/
# =/function neofunction:system/adv/tick/cmd/offhand/994/994


# 実行条件：オフハンドにコンパスを持っている場合
playsound block.amethyst_block.break record @s ~ ~ ~ 2.0 2.0 1.0
tellraw @s [{"text":"―――――――――――――――――<< ","color":"dark_green","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"目標メニューは異空の計器をオフハンドに持ちスニークすると表示できる"}]}},{"text":"目標メニュー","underlined":true},{"text":" >>―――――――――――――――――"}]

function neofunction:system/adv/tick/cmd/offhand/994/dim

tellraw @s {"text":"◆ メインクエスト","color":"dark_red","bold":true,"italic":false}
function neofunction:system/adv/tick/cmd/offhand/994/mainquest

tellraw @s {"text":"◆ サブクエスト","color":"dark_aqua","bold":true,"italic":false}
function neofunction:system/adv/tick/cmd/offhand/994/sidequest

execute as @s[tag=quest] run tellraw @s {"text":"【 ここをクリックでサブクエストをキャンセル】","color":"aqua",click_event:{"action":"run_command",command:"/trigger code set 11"}}

tellraw @s [{"text":"―――――――――――――――――――――――――――――――――――――――――――――――――","color":"dark_green","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"目標メニューは異空の計器をオフハンドに持ちスニークすると表示できる"}]}}]

# 最寄りのアンカーを向く処理
tellraw @s {"text":"【 ここをクリックで最寄りのアンカーの方向を捉える】","color":"aqua",click_event:{"action":"run_command",command:"/trigger code set 12"}}




