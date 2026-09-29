# ボタンL1が押されるたびに実行される(進捗の報酬から呼ばれる)

# 押した瞬間のフィードバック(正解/不正解に関わらず必ず光って音が鳴る)
# ↓ <L1_X> <L1_Y> <L1_Z> をこのボタン上のランプ座標に書き換えてください
# [座標未設定のため一時停止] setblock <L1_X> <L1_Y> <L1_Z> minecraft:redstone_lamp[lit=true]
# [座標未設定のため一時停止] playsound minecraft:block.note_block.chime record @a <L1_X> <L1_Y> <L1_Z> 1 1.2


setblock ~-1 ~3 ~ minecraft:redstone_lamp[lit=true] replace
# 今の進捗が0番目(このボタンの正解位置)かどうかを判定
execute if score #hgv_progress temp matches 0 run scoreboard players set #hgv_stepok temp 1
execute unless score #hgv_progress temp matches 0 run scoreboard players set #hgv_stepok temp 0

# 正解ならカウンターを進める、不正解なら失敗処理へ
execute if score #hgv_stepok temp matches 1 run scoreboard players add #hgv_progress temp 1
execute if score #hgv_stepok temp matches 0 run function neofunction:system/world/ceresta/horsegraveyard/horsegraveyard_fail

# 全問正解(10個目)に到達したら成功処理へ
execute if score #hgv_stepok temp matches 1 if score #hgv_progress temp matches 10 run function neofunction:system/world/ceresta/horsegraveyard/horsegraveyard_success
