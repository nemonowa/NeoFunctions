# 命名：gate
# 説明：【追加：2026-10-09 ルブラ編】滝の裏の青い石の扉を右クリックしたとき：泉が弱って水が細くなったあと（424 以降）なら開く。それより前は水の向こうに何かがあるだけ
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d2/gate

# 内容
execute unless score #temp main_story matches 424.. run return run tellraw @s {"text":"落ちる水の向こうに、四角い影が見える気がする。","color":"gray","italic":true}
execute if data storage neofunction:rubra d2{gate:1b} run return 0
data modify storage neofunction:rubra d2.gate set value 1b
execute as @e[type=marker,tag=rubra_door_gate] at @s run function neofunction:system/rubra/d2/door/open
tellraw @a[distance=..24] {"text":"水の流れのような模様のタイルに、手を触れる。壁の一部が重い音を立てて奥へ沈み、冷たい、湿った風が吹き出してきた。","color":"#7FD8FF","italic":true}
