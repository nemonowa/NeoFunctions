# 現在の正解パターンをチャットに表示する(確認用、ゲームプレイには影響しません)
# /function neofunction:system/world/ceresta/horsegraveyard/debug_show_order

tellraw @s {"text":"[馬の墓場パズル] 現在の正解順:","color":"aqua"}
tellraw @s {"text":"0:L1  1:L2  2:L3  3:L4  4:L5  5:R1  6:R2  7:R3  8:R4  9:R5","color":"gray"}
tellraw @s [{"text":"今の進捗(#hgv_progress temp) = "},{"score":{"name":"#hgv_progress","objective":"temp"}}]
