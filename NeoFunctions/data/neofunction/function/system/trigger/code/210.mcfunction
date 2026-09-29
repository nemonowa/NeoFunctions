# 命名：210
# 説明：トリガー：チュートリアル開始処理
# >/function neofunction:asset/tellraw/cai1
# >/trigger code set 210
# =/function neofunction:system/trigger/code/210


# 内容
execute unless dimension neodimension:nexus run return run tellraw @s {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}
execute in minecraft:overworld run spreadplayers ~ ~ 64 128 false @s
execute in minecraft:overworld run tellraw @s {"text":"【ここはオーバーワールドです。 】\nNEXUSに帰還したい場合は以下を試してください。\n1インベントリを開いて、スキルポケットを右クリックして「未知の火器」を取り出す。\n(この時にスキルポケットに何も入っていない場合は、一度スキルポケットを左クリックしてください。)\n2 「未知の火器」を手に持って投げ、「異空の計器」状態にする。\n3「異空の計器」を手に持ってシフトする。","color":"aqua"}