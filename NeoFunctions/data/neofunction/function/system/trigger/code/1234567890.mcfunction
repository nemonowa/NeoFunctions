# 命名：1234567890
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/1234567890

#アイテムと、印判の使い方をテルロー
loot give @s loot neofunction:item/792
tellraw @s {"text":"【コードの照会が完了しました】\nスペルサインが付与されました！\nスペルサインは名前の色に対応する色ガラスを破壊することができます。\nアドベンチャーモードでもレッドストーンに配置可能です。","color":"aqua"}