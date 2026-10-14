# 命名：ring_start
# 説明：【追加：2026-10-09 ルブラ編】環状の衝撃波の溜め：1 秒の予告（舞台の真ん中が赤く光る）のあと、真ん中から外へ広がる衝撃波（ring_tick）。地面に立っていると当たる（跳べば避けられる）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack2
# >/function neofunction:entity/skill/boss/rubra_void/attack3
# =/function neofunction:entity/skill/boss/rubra_void/ring_start

# 内容
data modify storage neofunction:rubra fin merge value {a:4,c:20}
tag @a remove rubra_ringhit
playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..128] ~ ~ ~ 3 0.5
title @a[distance=..128] actionbar {"text":"舞台の真ん中から衝撃波が来る――跳べ！","color":"#FF6B6B","bold":true}
