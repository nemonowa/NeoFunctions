# データパック読み込み時に自動実行

# ワールドを開き直しても進行中のカウントがリセットされ続けないようにするガード
execute unless score #hgv_init temp matches 1 run scoreboard players set #hgv_progress temp 0
scoreboard players set #hgv_init temp 1
