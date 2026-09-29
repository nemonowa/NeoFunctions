# 命名：738-4
# 説明：追加効果CD終了時通知
# >/function neofunction:system/trigger/code/501
# =/function neofunction:asset/tellraw/738-4


# 内容
# 【変更：2026-09-28 26.3対応】"selector":"|||" は無効なセレクター（1.20.4 では何も表示されず、26.3 ではエラー）。閉じ側と同じ "text":"|||" の打ち間違いと判断して直す
tellraw @a[tag=temp232] [{"text":"<"},{"text":"|||","color":"dark_blue","bold":true,"italic":false,"obfuscated":true},{"text":" Gran Almirante Salazar ","color":"dark_red","bold":true,"italic":false},{"text":"|||","color":"dark_blue","bold":true,"italic":false,"obfuscated":true},{"text":"> "},{"text":"「剣を掲げよ。栄光を掴むか、海底へ沈むか──その答えを示せ。」","color":"dark_gray","bold":true,"italic":false}]