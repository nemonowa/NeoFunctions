# 命名：mesa
# 説明：メサ（紅鉢の街ルブラのまわり）の自然湧きの置き換え。1 体を 1 体に（乗り物や複数体にはしない）
# >/function neofunction:entity/.spawn/mob/.dim/ceresta
# =/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa

# ゾンビ枠：サンドウォーカー（元のバニラの敵は del で消す）
execute as @s[type=zombie] at @s run function neofunction:asset/summon/926
tag @s[type=zombie] add del
# スケルトン枠：赤砂の射手（元のバニラの敵は del で消す）
execute as @s[type=skeleton] at @s run function neofunction:asset/summon/927
tag @s[type=skeleton] add del
# クリーパー枠：爆ぜ石（元のバニラの敵は del で消す）
execute as @s[type=creeper] at @s run function neofunction:asset/summon/928
tag @s[type=creeper] add del
# クモ枠：赤砂獣（元のバニラの敵は del で消す）
execute as @s[type=spider] at @s run function neofunction:asset/summon/929
tag @s[type=spider] add del
# エンダーマン枠：赤砂の旋風（元のバニラの敵は del で消す）
execute as @s[type=enderman] at @s run function neofunction:asset/summon/930
tag @s[type=enderman] add del
# ウィッチ枠：砂漠の薬師（元のバニラの敵は del で消す）
execute as @s[type=witch] at @s run function neofunction:asset/summon/931
tag @s[type=witch] add del
