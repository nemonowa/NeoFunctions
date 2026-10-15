# 命名：hit_apply
# 説明：本体に dmg のダメージ（攻撃した人の攻撃として）
# 実行条件：実行者 攻撃したプレイヤー。引数 dmg
# >/function neofunction:entity/skill/boss/rubra_worm/hit_dmg
# =/function neofunction:entity/skill/boss/rubra_worm/hit_apply

# 内容
$damage @e[type=ravager,tag=rubra_worm,limit=1] $(dmg) minecraft:player_attack by @s
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 0.8
