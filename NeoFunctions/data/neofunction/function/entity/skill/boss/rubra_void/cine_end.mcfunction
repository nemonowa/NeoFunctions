# 命名：cine_end
# 説明：【追加：2026-10-09 ルブラ編】空の演出のおわり：結末ごとの続きへ（A end_a、B end_b、C burst_c。どれも release で舞台の人を広場へ戻し、広場で会話）
# 実行条件：実行者 見張り役
# >/function neofunction:entity/skill/boss/rubra_void/cine_tick
# =/function neofunction:entity/skill/boss/rubra_void/cine_end

# 内容
kill @e[type=ender_dragon,tag=rubra_fin_fx]
execute in neodimension:ceresta_festa positioned 866 150 3226 run kill @e[type=experience_orb,dx=110,dy=120,dz=112]
execute if data storage neofunction:rubra fin.cine{e:"a"} run return run function neofunction:system/adv/tick/quest/40/fin/end_a
execute if data storage neofunction:rubra fin.cine{e:"b"} run return run function neofunction:system/adv/tick/quest/40/fin/end_b
function neofunction:system/adv/tick/quest/40/fin/burst_c
